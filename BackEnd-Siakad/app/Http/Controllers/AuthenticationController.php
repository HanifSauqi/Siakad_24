<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthenticationController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);
    
        $user = User::where('email', $request->email)->first();
    
        if (!$user || !Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }
    
        // Buat token baru
        $token = $user->createToken('user login')->plainTextToken;
    
        // Simpan token di kolom remember_token
        $user->forceFill([
            'remember_token' => Hash::make($token),
        ])->save();
    
        // Return token and role
        return response()->json([
            'success' => true,
            'token' => $token,
            'role' => $user->role, // Asumsi bahwa Anda memiliki kolom 'role' di tabel 'users'
            'id' => $user->id, // tambahkan baris ini
        ]);
    }
    
    public function logout(Request $request)
    {
        // Hapus token dari kolom remember_token
        $request->user()->forceFill([
            'remember_token' => null,
        ])->save();

        // Hapus token saat ini
        $request->user()->currentAccessToken()->delete();
    }
}

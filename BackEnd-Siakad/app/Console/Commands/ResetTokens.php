<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class ResetTokens extends Command
{
    protected $signature = 'tokens:reset';

    protected $description = 'Reset all personal access tokens and reset the ID to 1';

    public function handle()
    {
        DB::table('personal_access_tokens')->delete();
        DB::statement('ALTER TABLE personal_access_tokens AUTO_INCREMENT = 1');
        $this->info('Personal access tokens reset successfully.');
    }
}

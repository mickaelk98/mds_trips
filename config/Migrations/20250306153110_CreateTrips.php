<?php
declare(strict_types=1);

use Migrations\BaseMigration;

class CreateTrips extends BaseMigration
{
    /**
     * Change Method.
     *
     * @return void
     */
    public function change(): void
    {
        $table = $this->table('trips');
        $table->addColumn('title', 'string', [
            'limit' => 100,
            'null' => false,
        ])
        ->addColumn('user_id', 'integer', [
            'null' => false,
        ])
        ->addColumn('city_id', 'integer', [
            'null' => false,
        ])
        ->addColumn('created', 'datetime', [
            'default' => 'CURRENT_TIMESTAMP',
            'null' => false,
        ])
        ->addColumn('modified', 'datetime', [
            'default' => 'CURRENT_TIMESTAMP',
            'null' => false,
        ]);

        $table->create();
    }
}

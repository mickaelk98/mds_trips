<?php
declare(strict_types=1);

use Migrations\BaseMigration;

class CreateCities extends BaseMigration
{
    /**
     * Change Method.
     *
     * @return void
     */
    public function change(): void
    {
        $table = $this->table('cities');
        $table->addColumn('name', 'string', [
            'limit' => 150,
            'null' => false,
        ])
        ->addColumn('country', 'string', [
            'limit' => 150,
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

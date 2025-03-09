<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * TripsFixture
 */
class TripsFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => 1,
                'title' => 'Lorem ipsum dolor sit amet',
                'user_id' => 1,
                'city_id' => 1,
                'created' => '2025-03-06 15:42:40',
                'modified' => '2025-03-06 15:42:40',
            ],
        ];
        parent::init();
    }
}

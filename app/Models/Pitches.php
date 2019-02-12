<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pitches extends Model
{
    protected $table = 'pitches';

    const TYPE_3G = '3G';
    const TYPE_4G = '4G';
    const TYPE_ASTRO = 'Astro';
    const TYPE_GRASS = 'Grass';
    const TYPE_INDOOR = 'Indoor';

    const TYPE_3G_NUM = 1;
    const TYPE_4G_NUM = 2;
    const TYPE_ASTRO_NUM = 3;
    const TYPE_GRASS_NUM = 4;
    const TYPE_INDOOR_NUM = 5;

    const FORMAT_5 = '5V5';
    const FORMAT_7 = '7V7';
    const FORMAT_11 = '11V11';

    const FORMAT_5_NUM = 5;
    const FORMAT_7_NUM = 7;
    const FORMAT_11_NUM = 11;

    public static function getTypes(): array
    {
        return [
            self::TYPE_3G_NUM => self::TYPE_3G,
            self::TYPE_4G_NUM => self::TYPE_4G,
            self::TYPE_ASTRO_NUM => self::TYPE_ASTRO,
            self::TYPE_GRASS_NUM => self::TYPE_GRASS,
            self::TYPE_INDOOR_NUM => self::TYPE_INDOOR,
        ];
    }

    public static function getFormats(): array
    {
        return [
            self::FORMAT_5_NUM => self::FORMAT_5,
            self::FORMAT_7_NUM => self::FORMAT_7,
            self::FORMAT_11_NUM => self::FORMAT_11,
        ];
    }
}

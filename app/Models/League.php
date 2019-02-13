<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class League extends Model
{
    protected $table = 'league';

    const FORMAT_5V5 = '5V5';
    const FORMAT_6V6 = '6V6';
    const FORMAT_7V7 = '7V7';
    const FORMAT_11V11 = '11V11';

    const CHALLENGE_RECREATIONAL = 'Recreational';
    const CHALLENGE_COMPETITIVE = 'Competitive';

    const TYPE_FUTSAL = 'Futsal';
    const TYPE_OUTDOOR = 'Outdoor';

    const FORMAT_5V5_NUM = 5;
    const FORMAT_6V6_NUM = 6;
    const FORMAT_7V7_NUM = 7;
    const FORMAT_11V11_NUM = 11;

    const CHALLENGE_RECREATIONAL_NUM = 0;
    const CHALLENGE_COMPETITIVE_NUM = 1;

    const TYPE_FUTSAL_NUM = 0;
    const TYPE_OUTDOOR_NUM = 1;

    public static function getTypes(): array
    {
        return [
            self::TYPE_FUTSAL_NUM => self::TYPE_FUTSAL,
            self::TYPE_OUTDOOR_NUM => self::TYPE_OUTDOOR,
        ];
    }

    public static function getTypeString(int $num): string
    {
        $types = self::getTypes();
        return $types[$num];
    }

    public static function getFormats(): array
    {
        return [
            self::FORMAT_5V5_NUM => self::FORMAT_5V5,
            self::FORMAT_6V6_NUM => self::FORMAT_6V6,
            self::FORMAT_7V7_NUM => self::FORMAT_7V7,
            self::FORMAT_11V11_NUM => self::FORMAT_11V11,
        ];
    }

    public static function getFormatString(int $num): string
    {
        $formats = self::getFormats();
        return $formats[$num];
    }
    public static function getChallengeLevels(): array
    {
        return [
            self::CHALLENGE_RECREATIONAL_NUM => self::CHALLENGE_RECREATIONAL,
            self::CHALLENGE_COMPETITIVE_NUM => self::CHALLENGE_COMPETITIVE,
        ];
    }

    public static function getChallengeLevelString(int $num): string
    {
        $types = self::getChallengeLevels();
        return $types[$num];
    }

}

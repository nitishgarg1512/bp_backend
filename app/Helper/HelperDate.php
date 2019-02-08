<?php

namespace App\Helper;


class HelperDate
{
    public static function reformatTimeSpan($timeSpan)
    {
        $data = explode(', ', $timeSpan);
        if (count($data) <= 2) {
            return $timeSpan;
        }

        return implode(', ', [$data[0], $data[1]]);
    }
}

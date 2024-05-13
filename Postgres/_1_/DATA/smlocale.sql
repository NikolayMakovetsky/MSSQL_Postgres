INSERT INTO smlocale (
	locale_code, lang_code,  lang_prefix, country_code, override_default_date, override_default_time, override_default_number, 
	date_format_string, time_format_string, number_thousand_separator, number_decimal_separator
)
SELECT	N'de-DE', 'DEU', '', 'DEU', 0, 0, 0, '', '', ',', '.' UNION ALL
SELECT	N'el-GR', 'ELL', '', 'GRC', 0, 0, 0, '', '', ',', '.' UNION ALL
SELECT	N'en-GB', 'ENG', 'GB', 'GBR', 0, 0, 0, '', '', ',', '.' UNION ALL
SELECT	N'fr-FR', 'FRA', '', 'FRA', 0, 0, 0, '', '', ',', '.' UNION ALL
SELECT	N'fr-BE', 'FRA', 'BE', 'BEL', 0, 0, 0, '', '', ',', '.' UNION ALL
SELECT	N'ja-JP', 'JPN', '', 'JPN', 0, 0, 0, '', '', ',', '.' UNION ALL
SELECT	N'uz-Cyrl-UZ', 'УЗБ', 'UZ-Cyr', 'UZB', 0, 0, 0, '', '', ',', '.' UNION ALL
SELECT	N'uz-Latn-UZ', 'UZB', 'UZ-Lat', 'UZB', 0, 0, 0, '', '', ',', '.';

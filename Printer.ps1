$printers = get-printer -Computername Cersei
foreach ($printer in $printers)
{
    get-printerproperty -printername $printer.name
}
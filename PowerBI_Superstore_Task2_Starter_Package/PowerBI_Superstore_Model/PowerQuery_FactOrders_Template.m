// Power Query starter: create one query per CSV using Get Data > Text/CSV.
// Replace the folder path below with the folder where you extracted the model files.
let
    Source = Csv.Document(
        File.Contents("C:\\YOUR_FOLDER\\PowerBI_Superstore_Model\\FactOrders.csv"),
        [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]
    ),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Types = Table.TransformColumnTypes(Headers,{
        {"OrderLineID", Int64.Type}, {"Order ID", type text},
        {"OrderDateKey", Int64.Type}, {"ShipDateKey", Int64.Type},
        {"CustomerKey", type text}, {"ProductKey", type text},
        {"Sales", Currency.Type}, {"Quantity", Int64.Type},
        {"Discount", type number}, {"Profit", Currency.Type}
    })
in
    Types

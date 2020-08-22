procedure DataSetFactory(var AClientDataSet: TClientDataSet;
  ASource: TDataSet);
var
  ADataSetProvider: TDataSetProvider;
begin
  try
    ADataSetProvider := TDataSetProvider.Create(Self);
    ADataSetProvider.Name := 'ADataSetProvider';
 
    ADataSetProvider.DataSet := ASource;
 
    AClientDataSet.ProviderName := ADataSetProvider.Name;
 
    AClientDataSet.Active := False;
    AClientDataSet.Active := True;
  finally
    FreeAndNil(ADataSetProvider);
  end;
end;

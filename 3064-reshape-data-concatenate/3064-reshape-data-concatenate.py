import pandas as pd

def concatenateTables(a: pd.DataFrame, b: pd.DataFrame) -> pd.DataFrame:
    return pd.concat([a, b])
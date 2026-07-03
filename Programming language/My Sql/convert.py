import pandas as pd
from sqlalchemy import create_engine

engine = create_engine(
    "mysql+pymysql://root:tNINSaTrbsvTtpHwwAsEihetneViyOij@zephyr.proxy.rlwy.net:52238/practice_1"
)

excel_file = pd.read_excel(
    "Emp Mgt Structure.xlsx",
    sheet_name=None
)

for sheet_name, df in excel_file.items():

    # Clean column names
    df.columns = (
        df.columns
        .str.strip()
        .str.lower()
        .str.replace(" ", "_", regex=False)
        .str.replace("-", "_", regex=False)
    )

    # Clean table name
    table_name = (
        sheet_name.strip()
        .lower()
        .replace(" ", "_")
        .replace("-", "_")
    )

    print(f"\nImporting sheet: {sheet_name}")
    print(f"Creating table: {table_name}")
    print("Columns:", df.columns.tolist())

    df.to_sql(
        name=table_name,
        con=engine,
        if_exists='replace',
        index=False
    )

    print(f"✅ {table_name} imported successfully")

print("\n🎉 All sheets imported successfully!")
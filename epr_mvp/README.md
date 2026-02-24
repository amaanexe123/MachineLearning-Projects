\# EPR MVP Bootstrap



\## Run order

```bash

psql "$DATABASE\_URL" -f epr\_mvp/sql/001\_init\_epr\_schema.sql

psql "$DATABASE\_URL" -f epr\_mvp/sql/002\_seed\_reference\_data.sql




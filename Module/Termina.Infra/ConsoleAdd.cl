class ConsoleAdd : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.TextInfra : share TextInfra;
        this.StringComp : share StringComp;

        this.Range : new Range;
        this.Range.Init();

        var Data data;
        data : new Data;
        data.Count : this.InitCapaci * 4;
        data.Init();

        this.Data : data;
        this.Capaci : this.InitCapaci;
        return true;
    }

    field precate TextInfra TextInfra { get { return data; } set { data : value; } }
    field precate StringComp StringComp { get { return data; } set { data : value; } }
    field precate Int InitCapaci { get { return 16; } set { } }
    field precate Int MaxCapaci { get { return 2048; } set { } }
    field precate Range Range { get { return data; } set { data : value; } }
    field precate Data Data { get { return data; } set { data : value; } }
    field precate Int Count { get { return data; } set { data : value; } }
    field precate Int Capaci { get { return data; } set { data : value; } }

    maide prusate String Result()
    {
        this.Range.Index : 0;
        this.Range.Count : this.Count;

        var String a;
        a : this.StringComp.CreateData(this.Data, this.Range);
        return a;
    }

    maide prusate Bool Clear()
    {
        this.Count : 0;
        return true;
    }

    maide prusate Bool Execute(var Int n)
    {
        var Int count;
        var Int capaci;
        count : this.Count;
        capaci : this.Capaci;

        var Data data;
        data : this.Data;

        var Int kka;
        kka : 4;

        inf (~(count < capaci))
        {
            var Bool ba;
            ba : this.MaxCapaci = capaci;

            inf (ba)
            {
                var Int countA;
                countA : count - 1;

                this.TextInfra.Copy(data, 0, data, 1, countA);

                this.Count : countA;
            }

            inf (~ba)
            {
                var Int newCapaci;
                newCapaci : capaci * 2;

                var Int kd;
                kd : newCapaci * kka;

                var Data k;
                k : new Data;
                k.Count : kd;
                k.Init();

                this.TextInfra.DataCopy(k, 0, data, 0, count);

                this.Data : k;

                this.Capaci : newCapaci;
            }
        }

        this.AddChar(value);

        return true;
    }

    maide precate Bool AddChar(var Int value)
    {
        this.TextInfra.DataCharSet(this.Data, this.Count, value);

        this.Count : this.Count + 1;
        return true;
    }
}
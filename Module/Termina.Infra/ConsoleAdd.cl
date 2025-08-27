class ConsoleAdd : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.InfraInfra : share InfraInfra;
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

    field precate InfraInfra InfraInfra { get { return data; } set { data : value; } }
    field precate StringComp StringComp { get { return data; } set { data : value; } }
    field precate Int InitCapaci { get { return 16; } set { } }
    field precate Int MaxCapaci { get { return 2048; } set { } }
    field precate StringComp StringComp { get { return data; } set { data : value; } }
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
            var Int ka;
            ka : capaci * 2;

            inf (this.MaxCapaci < ka)
            {
                ka : this.MaxCapaci;
            }

            inf (count < ka)
            {
                var Int kd;
                kd : ka * kka;

                var Data k;
                k : new Data;
                k.Count : kd;
                k.Init();

                var Int kk;
                kk : count * kka;
                this.InfraInfra.DataCopy(k, 0, data, 0, kk);

                data : k;

                capaci : ka;

                this.Data : data;

                this.Capaci : capaci;

                this.AddChar(value);

                return true;
            }
        }

        this.AddChar(value);

        return true;
    }

    maide precate Bool AddChar(var Int value)
    {
        var Int kka;
        kka : 4;

        var Int ke;
        ke : this.Count * kka;

        this.InfraInfra.DataCharSet(data, ke, value);

        this.Count : this.Count + 1;
        return true;
    }
}
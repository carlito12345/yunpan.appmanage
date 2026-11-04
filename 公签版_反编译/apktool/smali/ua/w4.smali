.class public final Lua/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNissan;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/w4;->a:I

    iput-object p1, p0, Lua/w4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method

.method private final c()V
    .locals 0

    .line 1
    return-void
.end method

.method private final d()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lua/w4;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 9
    .line 10
    iget-object v2, p0, Lua/w4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 11
    .line 12
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 13
    .line 14
    invoke-static {v3}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v0, "\u60a8\u4e0d\u662f\u65e5\u4ea7[\u98de\u601d\u5361\u5c14]\u82af\u7247\u7cfb\u7edf"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lua/u4;

    .line 27
    .line 28
    invoke-direct {v3, v2, v0}, Lua/u4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lmc/c;

    .line 32
    .line 33
    invoke-direct {v4, v1, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v3, Lua/v4;

    .line 51
    .line 52
    invoke-direct {v3, v2, v0}, Lua/v4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lec/b;->b(Lec/e;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    :pswitch_0
    return-void

    .line 59
    :pswitch_1
    new-instance v0, Lph/j;

    .line 60
    .line 61
    const/16 v2, 0x1b

    .line 62
    .line 63
    invoke-direct {v0, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lmc/c;

    .line 67
    .line 68
    invoke-direct {v2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lka/c;

    .line 86
    .line 87
    const/16 v2, 0x15

    .line 88
    .line 89
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 2

    .line 1
    iget v0, p0, Lua/w4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/w4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityNissan;->x(Lcom/yunpan/appmanage/ui/ActivityNissan;Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    iget-object v0, p0, Lua/w4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityNissan;->x(Lcom/yunpan/appmanage/ui/ActivityNissan;Z)V

    .line 18
    .line 19
    .line 20
    :pswitch_2
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Li5/b;
.super La/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Li5/b;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, La/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final t()Li5/i;
    .locals 1

    .line 1
    iget v0, p0, Li5/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Li5/k;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Li5/k;-><init>(Li5/b;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Li5/f;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Li5/f;-><init>(Li5/b;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_1
    new-instance v0, Li5/a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Li5/a;-><init>(Li5/b;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

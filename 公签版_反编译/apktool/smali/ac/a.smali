.class public final synthetic Lac/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lac/b;


# direct methods
.method public synthetic constructor <init>(Lac/b;I)V
    .locals 0

    .line 1
    iput p2, p0, Lac/a;->a:I

    iput-object p1, p0, Lac/a;->b:Lac/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbi/a;Lag/h;)V
    .locals 0

    .line 1
    iget p2, p0, Lac/a;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ldb/d;

    .line 7
    .line 8
    const-string p2, "event"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lac/a;->b:Lac/b;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p1, Ldb/x;

    .line 20
    .line 21
    const-string p2, "event"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lac/a;->b:Lac/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

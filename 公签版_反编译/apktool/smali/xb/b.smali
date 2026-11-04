.class public final synthetic Lxb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lxb/c;


# direct methods
.method public synthetic constructor <init>(Lxb/c;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxb/b;->a:I

    iput-object p1, p0, Lxb/b;->b:Lxb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lbi/a;)V
    .locals 1

    .line 1
    iget v0, p0, Lxb/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ldb/l;

    .line 7
    .line 8
    iget-object p1, p0, Lxb/b;->b:Lxb/c;

    .line 9
    .line 10
    invoke-virtual {p1}, Lxb/c;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Ldb/a0;

    .line 15
    .line 16
    iget-object p1, p0, Lxb/b;->b:Lxb/c;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    check-cast p1, Ldb/c;

    .line 23
    .line 24
    iget-object p1, p0, Lxb/b;->b:Lxb/c;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    check-cast p1, Ldb/d;

    .line 31
    .line 32
    iget-object p1, p0, Lxb/b;->b:Lxb/c;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

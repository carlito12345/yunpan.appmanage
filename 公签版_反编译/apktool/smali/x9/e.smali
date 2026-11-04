.class public final synthetic Lx9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/g;


# direct methods
.method public synthetic constructor <init>(Lx9/g;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx9/e;->a:I

    iput-object p1, p0, Lx9/e;->b:Lx9/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/widget/EditText;)V
    .locals 1

    .line 1
    iget v0, p0, Lx9/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx9/e;->b:Lx9/g;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lz7/s;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "value"

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lx9/e;->b:Lx9/g;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lz7/s;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v0, "name"

    .line 45
    .line 46
    invoke-virtual {p1, v0, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

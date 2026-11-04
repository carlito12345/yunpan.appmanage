.class public final synthetic Lha/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lea/e;


# instance fields
.field public final synthetic a:Lha/v8;


# direct methods
.method public synthetic constructor <init>(Lha/v8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/u8;->a:Lha/v8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/u8;->a:Lha/v8;

    .line 2
    .line 3
    iget-object v0, v0, Lha/v8;->n:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/u8;->a:Lha/v8;

    .line 2
    .line 3
    iget-object p2, p1, Lha/v8;->n:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, p1, Lha/v8;->j:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Lha/v8;->n:Lx9/t2;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

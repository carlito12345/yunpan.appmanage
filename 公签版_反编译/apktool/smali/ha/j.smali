.class public final synthetic Lha/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/p2;


# instance fields
.field public final synthetic a:Lha/l;


# direct methods
.method public synthetic constructor <init>(Lha/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/j;->a:Lha/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/j;->a:Lha/l;

    .line 2
    .line 3
    iget-object v0, v0, Lha/l;->h:Lx9/c;

    .line 4
    .line 5
    new-instance v1, Lx9/n3;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lx9/n3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/j;->a:Lha/l;

    .line 2
    .line 3
    iget-object p2, p1, Lha/l;->h:Lx9/c;

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
    iget-object p2, p1, Lha/l;->j:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Lha/l;->h:Lx9/c;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

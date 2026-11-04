.class public final synthetic Ly1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/k;
.implements Lu1/j;


# instance fields
.field public final synthetic a:Ly1/x;


# direct methods
.method public synthetic constructor <init>(Ly1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/r;->a:Ly1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lr1/k0;

    .line 2
    .line 3
    iget-object v0, p0, Ly1/r;->a:Ly1/x;

    .line 4
    .line 5
    iget-object v0, v0, Ly1/x;->Y:Lr1/i0;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lr1/k0;->h(Lr1/i0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(Ljava/lang/Object;Lr1/n;)V
    .locals 1

    .line 1
    check-cast p1, Lr1/k0;

    .line 2
    .line 3
    iget-object v0, p0, Ly1/r;->a:Ly1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lr1/j0;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Lr1/j0;-><init>(Lr1/n;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lr1/k0;->o(Lr1/j0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

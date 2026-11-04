.class public final synthetic Ly1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly1/f0;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ly1/f0;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/a0;->a:Ly1/f0;

    iput p2, p0, Ly1/a0;->b:I

    iput-boolean p3, p0, Ly1/a0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/a0;->a:Ly1/f0;

    .line 2
    .line 3
    iget-object v1, v0, Ly1/f0;->a:[Lh4/m0;

    .line 4
    .line 5
    iget v2, p0, Ly1/a0;->b:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget-object v1, v1, Lh4/m0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ly1/a;

    .line 12
    .line 13
    iget v1, v1, Ly1/a;->b:I

    .line 14
    .line 15
    iget-object v0, v0, Ly1/f0;->y:Lz1/e;

    .line 16
    .line 17
    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Lua/t6;

    .line 22
    .line 23
    iget-boolean v5, p0, Ly1/a0;->c:Z

    .line 24
    .line 25
    invoke-direct {v4, v2, v1, v3, v5}, Lua/t6;-><init>(IILz1/a;Z)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x409

    .line 29
    .line 30
    invoke-virtual {v0, v3, v1, v4}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.class public final synthetic Ly1/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly1/s0;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:Lf2/t;

.field public final synthetic d:Lf2/y;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Ly1/s0;Landroid/util/Pair;Lf2/t;Lf2/y;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/r0;->a:Ly1/s0;

    iput-object p2, p0, Ly1/r0;->b:Landroid/util/Pair;

    iput-object p3, p0, Ly1/r0;->c:Lf2/t;

    iput-object p4, p0, Ly1/r0;->d:Lf2/y;

    iput-object p5, p0, Ly1/r0;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Ly1/r0;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Ly1/r0;->a:Ly1/s0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/s0;->b:Lm7/l;

    .line 4
    .line 5
    iget-object v0, v0, Lm7/l;->i:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lz1/e;

    .line 9
    .line 10
    iget-object v0, p0, Ly1/r0;->b:Landroid/util/Pair;

    .line 11
    .line 12
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Lf2/c0;

    .line 24
    .line 25
    iget-object v4, p0, Ly1/r0;->c:Lf2/t;

    .line 26
    .line 27
    iget-object v5, p0, Ly1/r0;->d:Lf2/y;

    .line 28
    .line 29
    iget-object v6, p0, Ly1/r0;->e:Ljava/io/IOException;

    .line 30
    .line 31
    iget-boolean v7, p0, Ly1/r0;->f:Z

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v7}, Lz1/e;->c(ILf2/c0;Lf2/t;Lf2/y;Ljava/io/IOException;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

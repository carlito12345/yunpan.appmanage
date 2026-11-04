.class public final Ly1/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu7/j0;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x5

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-array v4, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput-object v2, v4, v5

    .line 19
    .line 20
    aput-object v3, v4, v1

    .line 21
    .line 22
    invoke-static {v0, v4}, Lu7/j0;->j(I[Ljava/lang/Object;)Lu7/j0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Ly1/c1;->a:Lu7/j0;

    .line 27
    .line 28
    iput-boolean v1, p0, Ly1/c1;->b:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Ly1/c1;->c:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Ly1/c1;->d:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Ly1/c1;->e:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Ly1/c1;->f:Z

    .line 37
    .line 38
    return-void
.end method

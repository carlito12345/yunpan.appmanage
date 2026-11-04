.class public final Ly1/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ly1/d1;


# instance fields
.field public final a:Lu7/j0;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly1/c1;

    .line 2
    .line 3
    invoke-direct {v0}, Ly1/c1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ly1/d1;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ly1/d1;-><init>(Ly1/c1;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Ly1/d1;->g:Ly1/d1;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ly1/c1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Ly1/c1;->a:Lu7/j0;

    .line 5
    .line 6
    iput-object v0, p0, Ly1/d1;->a:Lu7/j0;

    .line 7
    .line 8
    iget-boolean v0, p1, Ly1/c1;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Ly1/d1;->b:Z

    .line 11
    .line 12
    iget-boolean v0, p1, Ly1/c1;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Ly1/d1;->c:Z

    .line 15
    .line 16
    iget-boolean v0, p1, Ly1/c1;->d:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Ly1/d1;->f:Z

    .line 19
    .line 20
    iget-boolean v0, p1, Ly1/c1;->e:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Ly1/d1;->d:Z

    .line 23
    .line 24
    iget-boolean p1, p1, Ly1/c1;->f:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Ly1/d1;->e:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ly1/d1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Ly1/d1;

    .line 8
    .line 9
    iget-object v0, p1, Ly1/d1;->a:Lu7/j0;

    .line 10
    .line 11
    iget-object v2, p0, Ly1/d1;->a:Lu7/j0;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lu7/j0;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Ly1/d1;->c:Z

    .line 20
    .line 21
    iget-boolean v2, p1, Ly1/d1;->c:Z

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Ly1/d1;->f:Z

    .line 26
    .line 27
    iget-boolean v2, p1, Ly1/d1;->f:Z

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Ly1/d1;->b:Z

    .line 32
    .line 33
    iget-boolean v2, p1, Ly1/d1;->b:Z

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    iget-boolean v0, p0, Ly1/d1;->d:Z

    .line 38
    .line 39
    iget-boolean v2, p1, Ly1/d1;->d:Z

    .line 40
    .line 41
    if-ne v0, v2, :cond_1

    .line 42
    .line 43
    iget-boolean v0, p0, Ly1/d1;->e:Z

    .line 44
    .line 45
    iget-boolean p1, p1, Ly1/d1;->e:Z

    .line 46
    .line 47
    if-ne v0, p1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-boolean v0, p0, Ly1/d1;->b:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Ly1/d1;->c:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Ly1/d1;->f:Z

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v3, p0, Ly1/d1;->d:Z

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-boolean v4, p0, Ly1/d1;->e:Z

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Ly1/d1;->a:Lu7/j0;

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    new-array v6, v6, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    aput-object v5, v6, v7

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v7, 0x1

    .line 42
    aput-object v5, v6, v7

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    aput-object v5, v6, v7

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    aput-object v0, v6, v5

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    aput-object v1, v6, v0

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    aput-object v2, v6, v0

    .line 55
    .line 56
    const/4 v0, 0x6

    .line 57
    aput-object v3, v6, v0

    .line 58
    .line 59
    const/4 v0, 0x7

    .line 60
    aput-object v4, v6, v0

    .line 61
    .line 62
    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    return v0
.end method

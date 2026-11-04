.class public final Ly1/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ly1/f0;


# direct methods
.method public constructor <init>(Ly1/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/b0;->a:Ly1/f0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/b0;->a:Ly1/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Ly1/f0;->F:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Ly1/f0;->E:Ly1/d1;

    .line 8
    .line 9
    iget-boolean v1, v1, Ly1/d1;->d:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v1, v0, Ly1/f0;->Z:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 v1, 0x2

    .line 19
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lu1/b0;->f(I)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

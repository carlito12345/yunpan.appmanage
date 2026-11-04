.class public final Lmb/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmb/g;

.field public final b:Lmb/a;

.field public c:Lmb/b;

.field public d:Lmb/b;

.field public e:Lmb/b;

.field public f:Lmb/b;

.field public g:Lmb/b;


# direct methods
.method public constructor <init>(Lmb/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmb/j;->a:Lmb/g;

    .line 5
    .line 6
    new-instance v0, Lmb/a;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lmb/a;-><init>(Lmb/g;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lmb/j;->b:Lmb/a;

    .line 12
    .line 13
    new-instance p1, Lmb/b;

    .line 14
    .line 15
    invoke-direct {p1}, Lmb/b;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p1, Lmb/b;->c:I

    .line 20
    .line 21
    iput v0, p1, Lmb/b;->b:I

    .line 22
    .line 23
    iput v0, p1, Lmb/b;->a:I

    .line 24
    .line 25
    iput-object p1, p0, Lmb/j;->c:Lmb/b;

    .line 26
    .line 27
    new-instance p1, Lmb/b;

    .line 28
    .line 29
    invoke-direct {p1}, Lmb/b;-><init>()V

    .line 30
    .line 31
    .line 32
    iput v0, p1, Lmb/b;->c:I

    .line 33
    .line 34
    iput v0, p1, Lmb/b;->b:I

    .line 35
    .line 36
    iput v0, p1, Lmb/b;->a:I

    .line 37
    .line 38
    iput-object p1, p0, Lmb/j;->d:Lmb/b;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmb/j;->c:Lmb/b;

    .line 2
    .line 3
    iget v0, v0, Lmb/b;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Lmb/j;->d:Lmb/b;

    .line 6
    .line 7
    iget v1, v1, Lmb/b;->a:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

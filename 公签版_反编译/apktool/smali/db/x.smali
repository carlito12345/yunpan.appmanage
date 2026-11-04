.class public final Ldb/x;
.super Lbi/a;
.source "SourceFile"


# instance fields
.field public final c:Lmb/b;

.field public final d:Lmb/b;

.field public final e:I


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lbi/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lmb/g;->m()Lmb/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p1, Lmb/j;->c:Lmb/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lmb/b;->a()Lmb/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ldb/x;->c:Lmb/b;

    .line 19
    .line 20
    iget-object p1, p1, Lmb/j;->d:Lmb/b;

    .line 21
    .line 22
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Ldb/x;->d:Lmb/b;

    .line 27
    .line 28
    iput p2, p0, Ldb/x;->e:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldb/x;->c:Lmb/b;

    .line 2
    .line 3
    iget v0, v0, Lmb/b;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Ldb/x;->d:Lmb/b;

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

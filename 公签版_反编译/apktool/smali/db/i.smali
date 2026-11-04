.class public Ldb/i;
.super Lbi/a;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/Boolean;

.field public final d:Landroid/view/KeyEvent;

.field public final e:I

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbi/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ldb/i;->d:Landroid/view/KeyEvent;

    .line 5
    .line 6
    iput p3, p0, Ldb/i;->e:I

    .line 7
    .line 8
    iget-object p1, p0, Lbi/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getKeyMetaStates()Lqb/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lqb/a;->b()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput-boolean p1, p0, Ldb/i;->f:Z

    .line 21
    .line 22
    iget-object p1, p0, Lbi/a;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getKeyMetaStates()Lqb/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lqb/a;->a()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Ldb/i;->g:Z

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final c(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldb/i;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v3, p0, Lbi/a;->a:I

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    if-nez v0, :cond_2

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    :cond_2
    const/4 v1, 0x1

    .line 26
    :cond_3
    return v1
.end method

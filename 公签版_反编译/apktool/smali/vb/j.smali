.class public final Lvb/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Lgb/b;

.field public final b:Ldg/a;

.field public c:J

.field public d:Z

.field public final synthetic e:Lvb/k;


# direct methods
.method public constructor <init>(Lvb/k;JLdg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvb/j;->e:Lvb/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lvb/j;->c:J

    .line 7
    .line 8
    iget-object p2, p1, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 9
    .line 10
    invoke-virtual {p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object p2, p2, Lmb/j;->c:Lmb/b;

    .line 15
    .line 16
    invoke-virtual {p2}, Lmb/b;->a()Lmb/b;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEditorLanguage()Lgb/b;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput-object p2, p0, Lvb/j;->a:Lgb/b;

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lmb/g;->length()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-ltz p3, :cond_1

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-gt p3, p2, :cond_0

    .line 42
    .line 43
    iput-object p4, p0, Lvb/j;->b:Ldg/a;

    .line 44
    .line 45
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getExtraArguments()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lvb/j;->d:Z

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 53
    .line 54
    invoke-direct {p1, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p2, "start > end"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lvb/j;->b:Ldg/a;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lvb/j;->a:Lgb/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Ldg/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Ldg/a;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    add-int/2addr v2, v1

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lvb/j;->e:Lvb/k;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    :try_start_1
    iget-object v1, v2, Lvb/k;->t:Lvb/j;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v1, v3, :cond_3

    .line 41
    .line 42
    iget-boolean v1, v0, Ldg/a;->a:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v1, Lha/db;

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    invoke-direct {v1, v3, v0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Ldg/a;->e:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iget-object v0, v2, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 64
    .line 65
    new-instance v1, Lvb/g;

    .line 66
    .line 67
    const/4 v3, 0x3

    .line 68
    invoke-direct {v1, v2, v3}, Lvb/g;-><init>(Lvb/k;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    iget-object v0, v2, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 75
    .line 76
    new-instance v1, Lua/g8;

    .line 77
    .line 78
    const/4 v2, 0x7

    .line 79
    invoke-direct {v1, v2, p0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    instance-of v0, v0, Lhb/a;

    .line 87
    .line 88
    :goto_3
    return-void
.end method

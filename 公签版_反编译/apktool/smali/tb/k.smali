.class public final Ltb/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcc/d;


# instance fields
.field public a:F

.field public b:F

.field public final c:I

.field public final d:Lcc/d;

.field public e:Z

.field public f:Z

.field public final synthetic g:Ltb/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcc/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcc/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltb/k;->h:Lcc/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ltb/l;FFILcc/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltb/k;->g:Ltb/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Ltb/k;->a:F

    .line 7
    .line 8
    iput p3, p0, Ltb/k;->b:F

    .line 9
    .line 10
    iput p4, p0, Ltb/k;->c:I

    .line 11
    .line 12
    iput-object p5, p0, Ltb/k;->d:Lcc/d;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget v0, p0, Ltb/k;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Ltb/k;->g:Ltb/l;

    .line 10
    .line 11
    iget-object v2, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 12
    .line 13
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorBlink()Ltb/d;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-boolean v2, v2, Ltb/d;->b:Z

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v2, v2, Ltb/u;->e:I

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->W0:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :cond_2
    :goto_0
    return v1
.end method

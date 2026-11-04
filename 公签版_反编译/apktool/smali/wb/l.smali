.class public final Lwb/l;
.super Lwb/a;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Leb/c;

.field public final synthetic g:Lwb/n;


# direct methods
.method public constructor <init>(Lwb/n;Ls3/d0;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb/l;->g:Lwb/n;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lwb/a;-><init>(Lwb/c;Ls3/d0;)V

    .line 4
    .line 5
    .line 6
    iput p4, p0, Lwb/l;->c:I

    .line 7
    .line 8
    iput p3, p0, Lwb/l;->e:I

    .line 9
    .line 10
    iput p5, p0, Lwb/l;->d:I

    .line 11
    .line 12
    new-instance p2, Leb/c;

    .line 13
    .line 14
    iget-object p3, p1, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 15
    .line 16
    iget-boolean p3, p3, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 17
    .line 18
    invoke-direct {p2, p3}, Leb/c;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lwb/l;->f:Leb/c;

    .line 22
    .line 23
    iget-object p1, p1, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Leb/c;->c()V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lwb/l;->g:Lwb/n;

    .line 7
    .line 8
    iget-object v1, v1, Lwb/c;->b:Lmb/g;

    .line 9
    .line 10
    new-instance v2, Lua/g6;

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-direct {v2, p0, v3, v0}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget v3, p0, Lwb/l;->c:I

    .line 18
    .line 19
    iget v4, p0, Lwb/l;->d:I

    .line 20
    .line 21
    invoke-virtual {v1, v3, v4, v2}, Lmb/g;->x(IILmb/e;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lwb/m;

    .line 25
    .line 26
    iget v2, p0, Lwb/l;->e:I

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lwb/m;-><init>(ILjava/util/ArrayList;)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.class public final Lyb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroid/graphics/RenderNode;

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lyb/c;->a:I

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/RenderNode;

    .line 7
    .line 8
    const-string v0, "editorRenderNode"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lyb/c;->b:Landroid/graphics/RenderNode;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lyb/c;->c:Z

    .line 17
    .line 18
    return-void
.end method

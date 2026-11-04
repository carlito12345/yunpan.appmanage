.class public final Ldb/e;
.super Lbi/a;
.source "SourceFile"


# instance fields
.field public final c:Landroid/view/ContextMenu;


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/ContextMenu;Lmb/b;)V
    .locals 0

    .line 1
    const-string p3, "editor"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "menu"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lbi/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Ldb/e;->c:Landroid/view/ContextMenu;

    .line 15
    .line 16
    return-void
.end method

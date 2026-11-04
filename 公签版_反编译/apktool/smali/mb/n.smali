.class public final Lmb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Landroid/text/Editable;

.field public final b:Landroid/text/DynamicLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmb/n;->c:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iput-object v3, p0, Lmb/n;->a:Landroid/text/Editable;

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    if-gt v0, v1, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroid/text/DynamicLayout;

    .line 23
    .line 24
    new-instance v4, Landroid/text/TextPaint;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 30
    .line 31
    const v5, 0x3fffffff    # 1.9999999f

    .line 32
    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x1

    .line 37
    move-object v2, v0

    .line 38
    invoke-direct/range {v2 .. v9}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lmb/n;->b:Landroid/text/DynamicLayout;

    .line 42
    .line 43
    :try_start_0
    const-class v1, Landroid/text/Layout;

    .line 44
    .line 45
    const-string v2, "mTextDir"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ltb/a;->b()Landroid/text/TextDirectionHeuristic;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v0}, Landroidx/emoji2/text/b;->m(Landroid/text/Editable;Landroid/text/TextPaint;)Landroid/text/DynamicLayout$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Landroidx/emoji2/text/b;->j(Landroid/text/DynamicLayout$Builder;)Landroid/text/DynamicLayout$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Landroidx/emoji2/text/b;->B(Landroid/text/DynamicLayout$Builder;)Landroid/text/DynamicLayout$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {}, Ltb/a;->b()Landroid/text/TextDirectionHeuristic;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroidx/emoji2/text/b;->l(Landroid/text/DynamicLayout$Builder;Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroidx/emoji2/text/b;->k(Landroid/text/DynamicLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Landroidx/emoji2/text/b;->n(Landroid/text/DynamicLayout$Builder;)Landroid/text/DynamicLayout;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lmb/n;->b:Landroid/text/DynamicLayout;

    .line 104
    .line 105
    :goto_0
    return-void
.end method

.method public static a()Lmb/n;
    .locals 2

    .line 1
    sget-object v0, Lmb/n;->c:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lmb/n;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lmb/n;

    .line 12
    .line 13
    invoke-direct {v1}, Lmb/n;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final b(ILmb/h;)I
    .locals 3

    .line 1
    add-int/lit8 v0, p1, -0x40

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sub-int v1, p1, v0

    .line 9
    .line 10
    iget v2, p2, Lmb/h;->c:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x41

    .line 13
    .line 14
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v2, p0, Lmb/n;->a:Landroid/text/Editable;

    .line 19
    .line 20
    invoke-interface {v2, p2, v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {v2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lmb/n;->b:Landroid/text/DynamicLayout;

    .line 35
    .line 36
    invoke-static {v2, p1}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 47
    .line 48
    .line 49
    add-int/2addr p1, v0

    .line 50
    return p1
.end method

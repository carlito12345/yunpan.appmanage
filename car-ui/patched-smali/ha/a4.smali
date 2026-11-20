.class public abstract Lha/a4;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;I)V
    .locals 1

    const v0, 0x7f140124

    .line 1
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lha/a4;->d:Z

    .line 3
    iput-boolean v0, p0, Lha/a4;->e:Z

    .line 4
    iput-object p2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 6
    iput p3, p0, Lha/a4;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;IZ)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 8
    iput-boolean p4, p0, Lha/a4;->d:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lha/a4;->c:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    .line 32
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;

    .line 46
    .line 47
    iget v0, v0, Lcom/yunpan/appmanage/util/x;->g0:I

    .line 48
    .line 49
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-static {p1, v0, v2}, Lcom/bumptech/glide/d;->W(Landroid/view/Window;IZ)V

    .line 53
    .line 54
    .line 55
    const p1, 0x7f0b055a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const v0, 0x7f0b055b

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-boolean v2, p0, Lha/a4;->e:Z

    .line 70
    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    const v2, 0x7f06003c

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Ln0/g;->c(Landroid/content/Context;I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    :cond_0
    new-instance v1, Lcom/google/android/material/datepicker/l;

    .line 86
    .line 87
    const/16 v2, 0xb

    .line 88
    .line 89
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    :try_start_0
    new-instance p1, Lha/z3;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-direct {p1, v1}, Lha/z3;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    :catch_0
    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V



    sget-object v0, Lcom/yunpan/appmanage/util/w;->a:Lcom/yunpan/appmanage/util/x;


    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/x;->H:Z


    if-eqz v1, :cond_0


    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;



    move-result-object v1

    iget v0, v0, Lcom/yunpan/appmanage/util/x;->g0:I


    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/d;->W(Landroid/view/Window;IZ)V



    :cond_0
    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->dialog(Landroid/app/Dialog;)V

    return-void
.end method

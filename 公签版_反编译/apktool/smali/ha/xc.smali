.class public final Lha/xc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lha/ad;


# direct methods
.method public constructor <init>(Lha/ad;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/xc;->b:Lha/ad;

    .line 2
    .line 3
    iput-object p2, p0, Lha/xc;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lha/xc;->b:Lha/ad;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    iput-object v0, p1, Lha/ad;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p0, Lha/xc;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

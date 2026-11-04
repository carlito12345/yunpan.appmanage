.class public final synthetic Lv3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lv3/k;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lv3/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/j;->a:Lv3/k;

    iput p2, p0, Lv3/j;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lv3/j;->a:Lv3/k;

    .line 2
    .line 3
    iget v0, p1, Lv3/k;->f:I

    .line 4
    .line 5
    iget v1, p0, Lv3/j;->b:I

    .line 6
    .line 7
    iget-object v2, p1, Lv3/k;->g:Lv3/t;

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lv3/k;->e:[F

    .line 12
    .line 13
    aget p1, p1, v1

    .line 14
    .line 15
    invoke-static {v2, p1}, Lv3/t;->b(Lv3/t;F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, v2, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

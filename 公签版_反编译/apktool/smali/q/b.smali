.class public final Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lq/e;

.field public final synthetic b:Lq/c;


# direct methods
.method public constructor <init>(Lq/c;Lq/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/b;->b:Lq/c;

    .line 2
    .line 3
    iput-object p2, p0, Lq/b;->a:Lq/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lq/b;->b:Lq/c;

    .line 2
    .line 3
    iget-object p2, p1, Lq/c;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    .line 5
    iget-object p4, p0, Lq/b;->a:Lq/e;

    .line 6
    .line 7
    iget-object p5, p4, Lq/e;->b:Lq/g;

    .line 8
    .line 9
    invoke-interface {p2, p5, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p1, Lq/c;->n:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p4, Lq/e;->b:Lq/g;

    .line 17
    .line 18
    invoke-virtual {p1}, Lq/g;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

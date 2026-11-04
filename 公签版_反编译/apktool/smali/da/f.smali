.class public final synthetic Lda/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic a:Lda/g;


# direct methods
.method public synthetic constructor <init>(Lda/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lda/f;->a:Lda/g;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lda/f;->a:Lda/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 8
    .line 9
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lif/a;->B0(Landroid/view/Window;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

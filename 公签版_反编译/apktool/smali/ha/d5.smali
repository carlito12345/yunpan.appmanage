.class public final Lha/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lha/e5;


# direct methods
.method public constructor <init>(Lha/e5;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/d5;->d:Lha/e5;

    .line 2
    .line 3
    iput-object p2, p0, Lha/d5;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    iput p3, p0, Lha/d5;->b:I

    .line 6
    .line 7
    iput p4, p0, Lha/d5;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lha/d5;->d:Lha/e5;

    .line 2
    .line 3
    iget-object p2, p1, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget p3, p0, Lha/d5;->b:I

    .line 10
    .line 11
    mul-int p2, p2, p3

    .line 12
    .line 13
    iget v0, p0, Lha/d5;->c:I

    .line 14
    .line 15
    add-int/2addr p2, v0

    .line 16
    iget-object v1, p0, Lha/d5;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    .line 20
    iget-object p2, p1, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    mul-int p2, p2, p3

    .line 27
    .line 28
    add-int/2addr p2, v0

    .line 29
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    iget-object p1, p1, Lha/e5;->h:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

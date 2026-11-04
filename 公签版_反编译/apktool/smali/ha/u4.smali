.class public final Lha/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lha/u4;->a:I

    iput-object p1, p0, Lha/u4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lha/u4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget p1, p0, Lha/u4;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    mul-int/lit8 p2, p2, 0x5

    .line 7
    .line 8
    iget-object p1, p0, Lha/u4;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    .line 14
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    .line 16
    iget-object p2, p0, Lha/u4;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object p1, p0, Lha/u4;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/content/SharedPreferences;

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p3, "size"

    .line 35
    .line 36
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lha/u4;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lha/v4;

    .line 45
    .line 46
    iget-object p1, p1, Lha/v4;->g:Lua/d1;

    .line 47
    .line 48
    invoke-virtual {p1}, Lua/d1;->a()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/u4;->a:I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/u4;->a:I

    return-void
.end method

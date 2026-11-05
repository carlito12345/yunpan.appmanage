.class public Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;
.super Lda/g;
.source "SourceFile"

.implements Lcom/yunpan/appmanage/carui/PetIcons$Selection;


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Landroid/widget/ImageView;

.field public D:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0035

    return v0
.end method

.method public final u()V
    .locals 12

    invoke-static {p0}, Lq4/a;->n(Landroid/content/Context;)Lz7/s;



    move-result-object v0

    iget-object v1, v0, Lz7/s;->a:Lb8/n;


    const-string v2, "allow_move_outer_edge"


    invoke-virtual {v1, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z



    move-result v1

    if-nez v1, :cond_0


    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;


    invoke-virtual {v0, v2, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V



    :cond_0
    const-string v1, "ico"


    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->e()I



    move-result v1

    iput v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I


    const v1, 0x7f0b04b5



    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;



    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;


    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;


    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->x()V



    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;


    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;



    move-result-object v1

    const-string v3, "size"


    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I



    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I


    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I


    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;


    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V



    const v3, 0x7f0b0563



    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;



    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/appcompat/widget/AppCompatSeekBar;


    const/16 v3, 0x64


    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setMax(I)V



    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I


    div-int/lit8 v3, v3, 0x5


    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setProgress(I)V



    const v3, 0x7f0b0565



    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;



    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/appcompat/widget/AppCompatSeekBar;


    const/16 v3, 0xff


    invoke-virtual {v7, v3}, Landroid/widget/ProgressBar;->setMax(I)V



    const-string v3, "trans"


    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I



    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/ProgressBar;->setProgress(I)V



    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;


    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I



    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V



    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;
    invoke-static {v6, v3}, Lcom/yunpan/appmanage/carui/PetIcons;->bindSizePreview(Landroid/widget/SeekBar;Landroid/widget/ImageView;)V



    new-instance v1, Lha/v;


    const/4 v3, 0x3

    invoke-direct {v1, v3, p0}, Lha/v;-><init>(ILjava/lang/Object;)V



    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V



    const v1, 0x7f0b0502



    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;



    move-result-object v1

    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;


    iget-object v4, p0, Lda/g;->A:Lda/g;


    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V



    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V



    new-instance v3, Lx9/l2;


    invoke-direct {v3}, Lx9/l2;-><init>()V



    const v4, 0x7f080128



    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;



    move-result-object v4

    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    const v4, 0x7f080129



    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;



    move-result-object v4

    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    const v4, 0x7f08012a



    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;



    move-result-object v4

    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    const v4, 0x7f08012b



    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;



    move-result-object v4

    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    const v4, 0x7f0802bd



    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;



    move-result-object v4

    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    const v4, 0x7f080216



    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;



    move-result-object v4

    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    invoke-virtual {v1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V



    new-instance v1, Lma/b;


    const/16 v4, 0xf


    invoke-direct {v1, p0, v4, v3}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V



    iput-object v1, v3, Lc6/g;->e:Lc6/e;


    const v1, 0x7f0b050c



    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;



    move-result-object v1

    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;


    iget-object v4, p0, Lda/g;->A:Lda/g;


    const/4 v8, 0x1

    invoke-direct {v3, v4, v8, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V



    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V



    new-instance v3, Lx9/w0;


    invoke-direct {v3}, Lx9/w0;-><init>()V



    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;


    const-string v9, "auto_hide"


    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v9

    invoke-virtual {v9}, Lz7/p;->b()Z



    move-result v9

    const-string v10, "60\u79d2\u672a\u89e6\u6478\u5c4f\u5e55\u65f6\u81ea\u52a8\u9690\u85cf(\u9632\u70e7\u5c4f\u51a0\u519b)"


    invoke-direct {v4, v10, v5, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V



    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;


    const-string v9, "auto_trans"


    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v9

    invoke-virtual {v9}, Lz7/p;->b()Z



    move-result v9

    const-string v10, "60\u79d2\u672a\u89e6\u6478\u5c4f\u5e55\u65f6\u589e\u52a0\u900f\u660e(\u9632\u70e7\u5c4f\u4e9a\u519b)"


    invoke-direct {v4, v10, v8, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V



    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;


    const-string v9, "antiBurnScreen"


    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v9

    invoke-virtual {v9}, Lz7/p;->b()Z



    move-result v9

    const-string v10, "\u9632\u70e7\u5c4f\u63aa\u65bd(\u8f7b\u5fae\u79fb\u52a8\u7b49\u63aa\u65bd\uff0c\u9632\u70e7\u5c4f\u5b63\u519b)"


    const/4 v11, 0x2

    invoke-direct {v4, v10, v11, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V



    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;


    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->b()Z



    move-result v2

    const-string v9, "\u5141\u8bb8\u62d6\u5230\u5c4f\u5e55\u5916(\u6309\u94ae\u7684\u4e00\u534a\u5728\u5c4f\u5e55\u5916\u9762)"


    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v2}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V



    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V



    new-instance v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;


    iget-object v4, v0, Lz7/s;->a:Lb8/n;


    const-string v9, "lock"


    invoke-virtual {v4, v9}, Lb8/n;->containsKey(Ljava/lang/Object;)Z



    move-result v4

    if-eqz v4, :cond_1


    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;



    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->b()Z



    move-result v0

    if-eqz v0, :cond_1


    const/4 v5, 0x1

    :cond_1
    const-string v0, "\u9501\u5b9a\u4f4d\u7f6e(\u4e5f\u53ef\u4ee5\u7528\u6620\u5c04\u6765\u9501\u5b9a \u548c \u89e3\u9664)"


    const/4 v4, 0x4

    invoke-direct {v2, v0, v4, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V



    invoke-virtual {v3, v2}, Lc6/g;->q(Ljava/lang/Object;)V



    invoke-virtual {v1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V



    new-instance v0, Lph/j;


    const/16 v1, 0x11


    invoke-direct {v0, v1, v3}, Lph/j;-><init>(ILjava/lang/Object;)V



    iput-object v0, v3, Lc6/g;->e:Lc6/e;


    const v0, 0x7f0b03ad



    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;



    move-result-object v0

    new-instance v1, Lua/g1;


    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V



    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V



    const v0, 0x7f0b03f3



    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;



    move-result-object v0

    new-instance v1, Lha/tc;


    const/4 v9, 0x1

    move-object v4, v1

    move-object v5, p0

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lha/tc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V



    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V



    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/carui/PetIcons;->apply(Landroid/widget/ImageView;I)Z
    move-result v1
    if-eqz v1, :carui_static_icon
    return-void
    :carui_static_icon
    # carui_pet_preview

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "/FloatButtonIco"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 40
    const v2, 0x7f080128

    .line 41
    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x2

    .line 52
    if-ne v0, v1, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v1, 0x7f080129

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v1, 0x3

    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 67
    .line 68
    const v1, 0x7f08012a

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v1, 0x4

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 79
    .line 80
    const v1, 0x7f08012b

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v1, 0x5

    .line 88
    if-ne v0, v1, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 91
    .line 92
    const v1, 0x7f0802bd

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method public final selectPet(I)V
    .locals 0
    iput p1, p0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->x()V
    return-void
.end method

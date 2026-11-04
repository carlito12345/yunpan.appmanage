.class public Lv3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/h;
.implements Lrh/u;
.implements Li3/d;
.implements Ls3/y;


# static fields
.field public static e:Lv3/f;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(BI)V
    .locals 1

    iput p2, p0, Lv3/f;->a:I

    packed-switch p2, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Landroidx/leanback/widget/u;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/leanback/widget/u;-><init>(I)V

    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 6
    new-instance p1, Landroidx/leanback/widget/u;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/leanback/widget/u;-><init>(I)V

    iput-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    return-void

    .line 8
    :pswitch_1
    new-instance p1, Lh5/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lh5/a;-><init>(I)V

    .line 9
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 12
    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 13
    new-instance p2, Landroidx/activity/h;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 14
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 15
    new-array p1, p1, [B

    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 16
    new-array p1, p1, [B

    iput-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 17
    new-array p1, p1, [B

    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    return-void

    .line 18
    :pswitch_3
    sget-object p1, Ld2/l;->a:Ld2/l;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    return-void

    .line 22
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Ld0/d;

    invoke-direct {p1}, Ld0/d;-><init>()V

    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 24
    new-instance p1, Ld0/d;

    invoke-direct {p1}, Ld0/d;-><init>()V

    iput-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    const/16 p1, 0x20

    .line 25
    new-array p1, p1, [Ld0/g;

    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lv3/f;->a:I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, p1, [J

    iput-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 44
    new-array p1, p1, [J

    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IC)V
    .locals 0

    .line 1
    iput p1, p0, Lv3/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, Lv3/f;->a:I

    iput-object p2, p0, Lv3/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv3/f;->c:Ljava/lang/Object;

    iput-object p4, p0, Lv3/f;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La2/a1;)V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lv3/f;->a:I

    .line 189
    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Lu1/f0;->k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;

    move-result-object v0

    .line 191
    iput-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 192
    new-instance v1, La2/z0;

    invoke-direct {v1, p0}, La2/z0;-><init>(Lv3/f;)V

    iput-object v1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 193
    iget-object p1, p1, La2/a1;->a:Landroid/media/AudioTrack;

    .line 194
    new-instance v2, La2/y0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, La2/y0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v2, v1}, La2/c;->l(Landroid/media/AudioTrack;La2/y0;La2/z0;)V

    return-void
.end method

.method public constructor <init>(La6/n;Ljava/util/ArrayList;La2/k1;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Lv3/f;->a:I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iput-object p3, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 157
    invoke-static {p2, v0}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p2, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 159
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/i;-><init>(Ljava/io/InputStream;La2/k1;)V

    iput-object p2, p0, Lv3/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lv3/f;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lv3/f;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lq/j0;

    invoke-direct {v0}, Lq/j0;-><init>()V

    iput-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 58
    iput-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;La2/k1;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lv3/f;->a:I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p3, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 163
    invoke-static {p2, v0}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 165
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/i;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lv3/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/v0;Landroidx/lifecycle/u0;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lv3/f;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lp1/a;->b:Lp1/a;

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lv3/f;-><init>(Landroidx/lifecycle/v0;Landroidx/lifecycle/u0;Lp1/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/v0;Landroidx/lifecycle/u0;Lp1/b;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lv3/f;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 40
    iput-object p3, p0, Lv3/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf0/e;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lv3/f;->a:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 61
    new-instance v0, Lg0/b;

    invoke-direct {v0}, Lg0/b;-><init>()V

    iput-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lh5/n;Lw5/f;Lh5/r;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lv3/f;->a:I

    .line 166
    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 168
    iput-object p3, p0, Lv3/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lv3/f;->a:I

    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv3/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv3/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1d

    iput v0, p0, Lv3/f;->a:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lr1/o;

    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 47
    const-string v1, "video/mp2t"

    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lr1/o;->m:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lr1/o;->n:Ljava/lang/String;

    .line 49
    new-instance p1, Lr1/p;

    invoke-direct {p1, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 50
    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    const/16 v0, 0x1c

    iput v0, p0, Lv3/f;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/c;

    mul-int/lit8 v2, v0, 0x2

    .line 33
    iget-object v3, p0, Lv3/f;->c:Ljava/lang/Object;

    check-cast v3, [J

    iget-wide v4, v1, Lr3/c;->b:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 34
    iget-wide v4, v1, Lr3/c;->c:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    check-cast p1, [J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method public constructor <init>(Lkf/f;Lm8/b;Ln8/d;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/16 v0, 0x14

    iput v0, v6, Lv3/f;->a:I

    .line 169
    iput-object v7, v6, Lv3/f;->d:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lv3/f;->b:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v10, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    :goto_0
    sget-object v11, Lm8/a;->f:Lm8/a;

    const/4 v12, 0x1

    if-eqz v10, :cond_7

    .line 172
    iget v2, v10, Ln8/d;->d:I

    add-int v5, v0, v2

    .line 173
    sget-object v0, Lm8/a;->e:Lm8/a;

    iget-object v2, v10, Ln8/d;->a:Lm8/a;

    iget v4, v10, Ln8/d;->c:I

    iget-object v13, v10, Ln8/d;->e:Ln8/d;

    if-ne v2, v0, :cond_0

    if-nez v13, :cond_0

    if-nez v4, :cond_1

    :cond_0
    if-eqz v13, :cond_2

    iget v0, v13, Ln8/d;->c:I

    if-eq v4, v0, :cond_2

    :cond_1
    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    move v12, v1

    :goto_2
    if-eqz v13, :cond_5

    .line 174
    iget-object v0, v13, Ln8/d;->a:Lm8/a;

    if-ne v0, v2, :cond_5

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    move/from16 p3, v12

    move v12, v5

    goto :goto_4

    .line 175
    :cond_5
    :goto_3
    iget-object v0, v6, Lv3/f;->b:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/util/ArrayList;

    new-instance v3, Ln8/e;

    iget v1, v10, Ln8/d;->b:I

    move-object v0, v3

    move/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 p3, v12

    move-object v12, v3

    move/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Ln8/e;-><init>(Lv3/f;Lm8/a;III)V

    invoke-virtual {v15, v9, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v12, 0x0

    :goto_4
    if-eqz v14, :cond_6

    .line 176
    iget-object v0, v6, Lv3/f;->b:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;

    new-instance v15, Ln8/e;

    iget v3, v10, Ln8/d;->b:I

    iget v4, v10, Ln8/d;->c:I

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Ln8/e;-><init>(Lv3/f;Lm8/a;III)V

    invoke-virtual {v14, v9, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    move/from16 v1, p3

    move v0, v12

    move-object v10, v13

    goto :goto_0

    .line 177
    :cond_7
    iget-boolean v0, v7, Lkf/f;->c:Z

    if-eqz v0, :cond_a

    .line 178
    iget-object v0, v6, Lv3/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/e;

    if-eqz v0, :cond_8

    .line 179
    iget-object v0, v0, Ln8/e;->a:Lm8/a;

    if-eq v0, v11, :cond_8

    if-eqz v1, :cond_8

    .line 180
    iget-object v0, v6, Lv3/f;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/util/ArrayList;

    new-instance v13, Ln8/e;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Ln8/e;-><init>(Lv3/f;Lm8/a;III)V

    invoke-virtual {v10, v9, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    :cond_8
    iget-object v0, v6, Lv3/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/e;

    .line 182
    iget-object v1, v6, Lv3/f;->b:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/util/ArrayList;

    iget-object v0, v0, Ln8/e;->a:Lm8/a;

    if-eq v0, v11, :cond_9

    goto :goto_5

    :cond_9
    const/4 v9, 0x1

    :goto_5
    new-instance v11, Ln8/e;

    sget-object v2, Lm8/a;->h:Lm8/a;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Ln8/e;-><init>(Lv3/f;Lm8/a;III)V

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    :cond_a
    iget v0, v8, Lm8/b;->a:I

    const/16 v1, 0x1a

    const/16 v2, 0x9

    if-gt v0, v2, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    if-gt v0, v1, :cond_c

    const/4 v3, 0x2

    goto :goto_6

    :cond_c
    const/4 v3, 0x3

    .line 184
    :goto_6
    invoke-static {v3}, Ld0/f;->c(I)I

    move-result v3

    if-eqz v3, :cond_e

    if-eq v3, v12, :cond_d

    const/16 v12, 0x1b

    const/16 v1, 0x28

    goto :goto_7

    :cond_d
    const/16 v12, 0xa

    goto :goto_7

    :cond_e
    const/16 v1, 0x9

    .line 185
    :goto_7
    invoke-virtual {v6, v8}, Lv3/f;->A(Lm8/b;)I

    move-result v2

    .line 186
    :goto_8
    iget v3, v7, Lkf/f;->b:I

    if-ge v0, v1, :cond_f

    invoke-static {v0}, Lm8/b;->a(I)Lm8/b;

    move-result-object v4

    invoke-static {v2, v4, v3}, Ln8/b;->c(ILm8/b;I)Z

    move-result v4

    if-nez v4, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    if-le v0, v12, :cond_10

    add-int/lit8 v1, v0, -0x1

    .line 187
    invoke-static {v1}, Lm8/b;->a(I)Lm8/b;

    move-result-object v1

    invoke-static {v2, v1, v3}, Ln8/b;->c(ILm8/b;I)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 188
    :cond_10
    invoke-static {v0}, Lm8/b;->a(I)Lm8/b;

    move-result-object v0

    iput-object v0, v6, Lv3/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll2/r;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lv3/f;->a:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq9/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)V
    .locals 6

    const/16 v0, 0x1b

    iput v0, p0, Lv3/f;->a:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, v1

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 68
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getCreationdate()Ljava/lang/String;

    move-result-object p1

    .line 70
    :goto_0
    invoke-static {p1}, Lt9/b;->b(Ljava/lang/String;)Ljava/util/Date;

    .line 71
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object p1, v1

    goto :goto_1

    .line 73
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 74
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 75
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetlastmodified()Ljava/lang/String;

    move-result-object p1

    .line 76
    :goto_1
    invoke-static {p1}, Lt9/b;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 77
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 79
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 80
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 81
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 82
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getCollection()Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 83
    const-string v1, "httpd/unix-directory"

    goto :goto_2

    .line 84
    :cond_8
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontenttype()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 85
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontenttype()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 86
    :cond_9
    const-string v1, "application/octet-stream"

    .line 87
    :goto_2
    iput-object v1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 88
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_a

    goto :goto_4

    .line 90
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 91
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 92
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontentlength()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 94
    :catch_0
    const-string v3, "Failed to parse content length "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lq9/a;->c:Ljava/util/logging/Logger;

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_3

    .line 95
    :cond_c
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 96
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    .line 98
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 99
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 100
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetetag()Ljava/lang/String;

    .line 101
    :cond_f
    :goto_5
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    .line 103
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 104
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 105
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getDisplayname()Ljava/lang/String;

    .line 106
    :cond_12
    :goto_6
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    goto :goto_8

    .line 109
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 111
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 112
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 113
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getCollection()Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    move-result-object v2

    const-string v3, "D"

    const-string v4, "DAV:"

    if-eqz v2, :cond_15

    .line 114
    new-instance v2, Lsc/a;

    const-string v5, "collection"

    invoke-direct {v2, v4, v5, v3}, Lsc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_15
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getPrincipal()Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 117
    new-instance v2, Lsc/a;

    const-string v5, "principal"

    invoke-direct {v2, v4, v5, v3}, Lsc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_16
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getAny()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 120
    invoke-static {v2}, Lt9/b;->c(Lorg/w3c/dom/Element;)Lsc/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 121
    :cond_17
    :goto_8
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_9

    .line 123
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 124
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 125
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 126
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getCollection()Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    move-result-object p1

    if-eqz p1, :cond_1a

    goto :goto_9

    .line 127
    :cond_1a
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontentlanguage()Ljava/lang/String;

    .line 128
    :cond_1b
    :goto_9
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_b

    .line 130
    :cond_1c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 132
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 133
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 135
    invoke-static {v2}, Lt9/b;->c(Lorg/w3c/dom/Element;)Lsc/a;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 136
    :cond_1e
    :goto_b
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_c

    .line 138
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 139
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 140
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getLockdiscovery()Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    .line 141
    :cond_21
    :goto_c
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_22

    goto :goto_d

    .line 143
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    .line 144
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 145
    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getSupportedlock()Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    :cond_24
    :goto_d
    return-void
.end method

.method public constructor <init>([Ls1/l;)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lv3/f;->a:I

    .line 146
    new-instance v0, La2/s1;

    invoke-direct {v0}, La2/s1;-><init>()V

    new-instance v1, Ls1/r;

    invoke-direct {v1}, Ls1/r;-><init>()V

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ls1/l;

    iput-object v2, p0, Lv3/f;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 149
    array-length v4, p1

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iput-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 151
    iput-object v1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 152
    array-length v3, p1

    aput-object v0, v2, v3

    .line 153
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method

.method public static G(Ljava/io/PushbackInputStream;[BI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Leg/c;->k(Ljava/io/InputStream;[BII)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-ne p0, p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Lwf/a;

    .line 10
    .line 11
    const-string p1, "Could not fill buffer"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static H(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p0, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p0, 0x2

    .line 15
    .line 16
    aget-byte v1, p1, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    add-int/lit8 p0, p0, 0x3

    .line 21
    .line 22
    aget-byte p0, p1, p0

    .line 23
    .line 24
    and-int/lit16 p0, p0, 0xff

    .line 25
    .line 26
    shl-int/lit8 p0, p0, 0x8

    .line 27
    .line 28
    or-int/2addr p0, v1

    .line 29
    shl-int/lit8 p0, p0, 0x10

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static K(I[B)I
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    aget-byte p0, p1, p0

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method private final Q()V
    .locals 0

    .line 1
    return-void
.end method

.method private final R()V
    .locals 0

    .line 1
    return-void
.end method

.method public static T(I[B)V
    .locals 2

    .line 1
    ushr-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    const/4 v1, 0x3

    .line 5
    aput-byte v0, p1, v1

    .line 6
    .line 7
    ushr-int/lit8 v0, p0, 0x10

    .line 8
    .line 9
    int-to-byte v0, v0

    .line 10
    const/4 v1, 0x2

    .line 11
    aput-byte v0, p1, v1

    .line 12
    .line 13
    ushr-int/lit8 v0, p0, 0x8

    .line 14
    .line 15
    int-to-byte v0, v0

    .line 16
    const/4 v1, 0x1

    .line 17
    aput-byte v0, p1, v1

    .line 18
    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    int-to-byte p0, p0

    .line 22
    const/4 v0, 0x0

    .line 23
    aput-byte p0, p1, v0

    .line 24
    .line 25
    return-void
.end method

.method public static W([BJ)V
    .locals 2

    .line 1
    const/16 v0, 0x38

    .line 2
    .line 3
    ushr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    int-to-byte v0, v1

    .line 7
    const/4 v1, 0x7

    .line 8
    aput-byte v0, p0, v1

    .line 9
    .line 10
    const/16 v0, 0x30

    .line 11
    .line 12
    ushr-long v0, p1, v0

    .line 13
    .line 14
    long-to-int v1, v0

    .line 15
    int-to-byte v0, v1

    .line 16
    const/4 v1, 0x6

    .line 17
    aput-byte v0, p0, v1

    .line 18
    .line 19
    const/16 v0, 0x28

    .line 20
    .line 21
    ushr-long v0, p1, v0

    .line 22
    .line 23
    long-to-int v1, v0

    .line 24
    int-to-byte v0, v1

    .line 25
    const/4 v1, 0x5

    .line 26
    aput-byte v0, p0, v1

    .line 27
    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    ushr-long v0, p1, v0

    .line 31
    .line 32
    long-to-int v1, v0

    .line 33
    int-to-byte v0, v1

    .line 34
    const/4 v1, 0x4

    .line 35
    aput-byte v0, p0, v1

    .line 36
    .line 37
    const/16 v0, 0x18

    .line 38
    .line 39
    ushr-long v0, p1, v0

    .line 40
    .line 41
    long-to-int v1, v0

    .line 42
    int-to-byte v0, v1

    .line 43
    const/4 v1, 0x3

    .line 44
    aput-byte v0, p0, v1

    .line 45
    .line 46
    const/16 v0, 0x10

    .line 47
    .line 48
    ushr-long v0, p1, v0

    .line 49
    .line 50
    long-to-int v1, v0

    .line 51
    int-to-byte v0, v1

    .line 52
    const/4 v1, 0x2

    .line 53
    aput-byte v0, p0, v1

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    ushr-long v0, p1, v0

    .line 58
    .line 59
    long-to-int v1, v0

    .line 60
    int-to-byte v0, v1

    .line 61
    const/4 v1, 0x1

    .line 62
    aput-byte v0, p0, v1

    .line 63
    .line 64
    const-wide/16 v0, 0xff

    .line 65
    .line 66
    and-long/2addr p1, v0

    .line 67
    long-to-int p2, p1

    .line 68
    int-to-byte p1, p2

    .line 69
    const/4 p2, 0x0

    .line 70
    aput-byte p1, p0, p2

    .line 71
    .line 72
    return-void
.end method

.method public static v(Lokhttp3/Call;Lokhttp3/Response;)Lv3/f;
    .locals 3

    .line 1
    new-instance v0, Lv3/f;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lv3/f;-><init>(IC)V

    .line 7
    .line 8
    .line 9
    iput-object p0, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public A(Lm8/b;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_8

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ln8/e;

    .line 22
    .line 23
    iget-object v4, v3, Ln8/e;->a:Lm8/a;

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Lm8/a;->a(Lm8/b;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    add-int/lit8 v6, v5, 0x4

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v7, 0x4

    .line 36
    const/4 v8, 0x2

    .line 37
    iget v9, v3, Ln8/e;->d:I

    .line 38
    .line 39
    const/4 v10, 0x1

    .line 40
    if-eq v4, v10, :cond_5

    .line 41
    .line 42
    const/4 v11, 0x6

    .line 43
    if-eq v4, v8, :cond_3

    .line 44
    .line 45
    if-eq v4, v7, :cond_2

    .line 46
    .line 47
    const/4 v3, 0x5

    .line 48
    if-eq v4, v3, :cond_1

    .line 49
    .line 50
    if-eq v4, v11, :cond_0

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_0
    mul-int/lit8 v9, v9, 0xd

    .line 54
    .line 55
    add-int/2addr v6, v9

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    add-int/lit8 v6, v5, 0xc

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    invoke-virtual {v3}, Ln8/e;->a()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    mul-int/lit8 v3, v3, 0x8

    .line 65
    .line 66
    add-int/2addr v6, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    div-int/lit8 v3, v9, 0x2

    .line 69
    .line 70
    mul-int/lit8 v3, v3, 0xb

    .line 71
    .line 72
    add-int/2addr v3, v6

    .line 73
    rem-int/lit8 v9, v9, 0x2

    .line 74
    .line 75
    if-ne v9, v10, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 v11, 0x0

    .line 79
    :goto_1
    add-int v6, v3, v11

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    div-int/lit8 v3, v9, 0x3

    .line 83
    .line 84
    mul-int/lit8 v3, v3, 0xa

    .line 85
    .line 86
    add-int/2addr v3, v6

    .line 87
    rem-int/lit8 v9, v9, 0x3

    .line 88
    .line 89
    if-ne v9, v10, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    if-ne v9, v8, :cond_7

    .line 93
    .line 94
    const/4 v7, 0x7

    .line 95
    goto :goto_2

    .line 96
    :cond_7
    const/4 v7, 0x0

    .line 97
    :goto_2
    add-int v6, v3, v7

    .line 98
    .line 99
    :goto_3
    add-int/2addr v2, v6

    .line 100
    goto :goto_0

    .line 101
    :cond_8
    return v2
.end method

.method public B(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Loh/a;

    .line 5
    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Loh/a;->a(C)Loh/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lph/g;

    .line 15
    .line 16
    iget v3, v2, Lph/g;->d:I

    .line 17
    .line 18
    mul-int p1, p1, v3

    .line 19
    .line 20
    iget v2, v2, Lph/g;->e:I

    .line 21
    .line 22
    sget-object v3, Loh/f;->a:[Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-ltz p1, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-eqz v4, :cond_5

    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    if-lt v2, v4, :cond_1

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v5, 0x0

    .line 38
    :goto_1
    invoke-static {v5}, Lnh/b;->V(Z)V

    .line 39
    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    :cond_2
    const/16 v2, 0x15

    .line 48
    .line 49
    if-ge p1, v2, :cond_3

    .line 50
    .line 51
    sget-object v0, Loh/f;->a:[Ljava/lang/String;

    .line 52
    .line 53
    aget-object p1, v0, p1

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    new-array v2, p1, [C

    .line 57
    .line 58
    :goto_2
    if-ge v3, p1, :cond_4

    .line 59
    .line 60
    const/16 v4, 0x20

    .line 61
    .line 62
    aput-char v4, v2, v3

    .line 63
    .line 64
    add-int/2addr v3, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_3
    invoke-virtual {v1, p1}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    new-instance p1, Lnh/c;

    .line 75
    .line 76
    const-string v0, "width must be >= 0"

    .line 77
    .line 78
    invoke-direct {p1, v0}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_5

    .line 82
    :goto_4
    throw p1

    .line 83
    :goto_5
    goto :goto_4
.end method

.method public C(Lw1/h;Landroid/net/Uri;Ljava/util/Map;JJLf2/u0;)V
    .locals 7

    .line 1
    new-instance v6, Ll2/l;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p4

    .line 6
    move-wide v4, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Ll2/l;-><init>(Lw1/h;JJ)V

    .line 8
    .line 9
    .line 10
    iput-object v6, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ll2/o;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Ll2/r;

    .line 22
    .line 23
    invoke-interface {p1, p2, p3}, Ll2/r;->a(Landroid/net/Uri;Ljava/util/Map;)[Ll2/o;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length p3, p1

    .line 28
    invoke-static {p3}, Lu7/g0;->l(I)Lu7/d0;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    array-length p6, p1

    .line 33
    const/4 p7, 0x1

    .line 34
    const/4 v0, 0x0

    .line 35
    if-ne p6, p7, :cond_1

    .line 36
    .line 37
    aget-object p1, p1, v0

    .line 38
    .line 39
    iput-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 40
    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :cond_1
    array-length p6, p1

    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_0
    if-ge v1, p6, :cond_9

    .line 46
    .line 47
    aget-object v2, p1, v1

    .line 48
    .line 49
    :try_start_0
    invoke-interface {v2, v6}, Ll2/o;->g(Ll2/p;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-object v2, p0, Lv3/f;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    iput v0, v6, Ll2/l;->f:I

    .line 58
    .line 59
    goto :goto_8

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :catch_0
    nop

    .line 63
    goto :goto_5

    .line 64
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ll2/o;->f()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p3, v2}, Lu7/a0;->d(Ljava/lang/Iterable;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Ll2/o;

    .line 74
    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    iget-wide v2, v6, Ll2/l;->d:J

    .line 78
    .line 79
    cmp-long v4, v2, p4

    .line 80
    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 v2, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 87
    :goto_2
    invoke-static {v2}, La9/o;->t(Z)V

    .line 88
    .line 89
    .line 90
    iput v0, v6, Ll2/l;->f:I

    .line 91
    .line 92
    goto :goto_7

    .line 93
    :goto_3
    iget-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p2, Ll2/o;

    .line 96
    .line 97
    if-nez p2, :cond_6

    .line 98
    .line 99
    iget-wide p2, v6, Ll2/l;->d:J

    .line 100
    .line 101
    cmp-long p6, p2, p4

    .line 102
    .line 103
    if-nez p6, :cond_5

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    const/4 p7, 0x0

    .line 107
    :cond_6
    :goto_4
    invoke-static {p7}, La9/o;->t(Z)V

    .line 108
    .line 109
    .line 110
    iput v0, v6, Ll2/l;->f:I

    .line 111
    .line 112
    throw p1

    .line 113
    :goto_5
    iget-object v2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Ll2/o;

    .line 116
    .line 117
    if-nez v2, :cond_8

    .line 118
    .line 119
    iget-wide v2, v6, Ll2/l;->d:J

    .line 120
    .line 121
    cmp-long v4, v2, p4

    .line 122
    .line 123
    if-nez v4, :cond_7

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_7
    const/4 v2, 0x0

    .line 127
    goto :goto_2

    .line 128
    :cond_8
    :goto_6
    const/4 v2, 0x1

    .line 129
    goto :goto_2

    .line 130
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_9
    :goto_8
    iget-object p4, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p4, Ll2/o;

    .line 136
    .line 137
    if-eqz p4, :cond_a

    .line 138
    .line 139
    :goto_9
    iget-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Ll2/o;

    .line 142
    .line 143
    invoke-interface {p1, p8}, Ll2/o;->c(Ll2/q;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_a
    new-instance p4, Lf2/k1;

    .line 148
    .line 149
    new-instance p5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string p6, "None of the available extractors ("

    .line 152
    .line 153
    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance p6, Lbd/c;

    .line 157
    .line 158
    const-string p7, ", "

    .line 159
    .line 160
    invoke-direct {p6, p7}, Lbd/c;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lu7/g0;->n([Ljava/lang/Object;)Lu7/y0;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    new-instance p7, La2/u0;

    .line 168
    .line 169
    const/16 p8, 0x13

    .line 170
    .line 171
    invoke-direct {p7, p8}, La2/u0;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1, p7}, Lu7/q;->t(Ljava/util/List;Lt7/d;)Ljava/util/AbstractList;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-instance p7, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p6, p7, p1}, Lbd/c;->d(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, ") could read the stream."

    .line 198
    .line 199
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3}, Lu7/d0;->g()Lu7/y0;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-direct {p4, p1, p2}, Lf2/k1;-><init>(Ljava/lang/String;Lu7/y0;)V

    .line 214
    .line 215
    .line 216
    goto :goto_b

    .line 217
    :goto_a
    throw p4

    .line 218
    :goto_b
    goto :goto_a
.end method

.method public D()[Lv3/f;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v9, v4

    .line 14
    check-cast v9, Landroid/net/Uri;

    .line 15
    .line 16
    invoke-static {v9}, Lcom/hierynomus/security/jce/a;->g(Landroid/net/Uri;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v9, v4}, Ld2/a;->D(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v10, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    :try_start_0
    new-array v5, v0, [Ljava/lang/String;

    .line 31
    .line 32
    const-string v6, "document_id"

    .line 33
    .line 34
    aput-object v6, v5, v1

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v9, v3}, Ld2/a;->i(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_4

    .line 63
    :catch_0
    move-exception v3

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :try_start_1
    invoke-static {v11}, Lcom/hierynomus/security/jce/a;->m(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_1
    move-exception v0

    .line 70
    throw v0

    .line 71
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    if-eqz v11, :cond_1

    .line 75
    .line 76
    :try_start_3
    invoke-static {v11}, Lcom/hierynomus/security/jce/a;->m(Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_2
    move-exception v0

    .line 81
    throw v0

    .line 82
    :catch_3
    :cond_1
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    new-array v3, v3, [Landroid/net/Uri;

    .line 87
    .line 88
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v9, v3

    .line 93
    check-cast v9, [Landroid/net/Uri;

    .line 94
    .line 95
    array-length v3, v9

    .line 96
    new-array v10, v3, [Lv3/f;

    .line 97
    .line 98
    :goto_3
    array-length v3, v9

    .line 99
    if-ge v1, v3, :cond_2

    .line 100
    .line 101
    new-instance v11, Lv3/f;

    .line 102
    .line 103
    aget-object v7, v9, v1

    .line 104
    .line 105
    const/16 v4, 0xd

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    move-object v3, v11

    .line 109
    move-object v5, p0

    .line 110
    move-object v6, v2

    .line 111
    invoke-direct/range {v3 .. v8}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 112
    .line 113
    .line 114
    aput-object v11, v10, v1

    .line 115
    .line 116
    add-int/2addr v1, v0

    .line 117
    goto :goto_3

    .line 118
    :cond_2
    return-object v10

    .line 119
    :goto_4
    if-eqz v11, :cond_3

    .line 120
    .line 121
    :try_start_4
    invoke-static {v11}, Lcom/hierynomus/security/jce/a;->m(Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :catch_4
    move-exception v0

    .line 126
    throw v0

    .line 127
    :catch_5
    :cond_3
    :goto_5
    goto :goto_7

    .line 128
    :goto_6
    throw v0

    .line 129
    :goto_7
    goto :goto_6
.end method

.method public E(ILf0/d;Li0/f;)Z
    .locals 6

    .line 1
    iget-object v0, p2, Lf0/d;->p0:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    iget-object v3, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v3, Lg0/b;

    .line 9
    .line 10
    iput v2, v3, Lg0/b;->a:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aget v0, v0, v2

    .line 14
    .line 15
    iput v0, v3, Lg0/b;->b:I

    .line 16
    .line 17
    invoke-virtual {p2}, Lf0/d;->q()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, v3, Lg0/b;->c:I

    .line 22
    .line 23
    invoke-virtual {p2}, Lf0/d;->k()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, v3, Lg0/b;->d:I

    .line 28
    .line 29
    iput-boolean v1, v3, Lg0/b;->i:Z

    .line 30
    .line 31
    iput p1, v3, Lg0/b;->j:I

    .line 32
    .line 33
    iget p1, v3, Lg0/b;->a:I

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    iget v4, v3, Lg0/b;->b:I

    .line 42
    .line 43
    if-ne v4, v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    const/4 v4, 0x0

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget p1, p2, Lf0/d;->W:F

    .line 52
    .line 53
    cmpl-float p1, p1, v4

    .line 54
    .line 55
    if-lez p1, :cond_2

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 p1, 0x0

    .line 60
    :goto_2
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget v0, p2, Lf0/d;->W:F

    .line 63
    .line 64
    cmpl-float v0, v0, v4

    .line 65
    .line 66
    if-lez v0, :cond_3

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/4 v0, 0x0

    .line 71
    :goto_3
    iget-object v4, p2, Lf0/d;->t:[I

    .line 72
    .line 73
    const/4 v5, 0x4

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    aget p1, v4, v1

    .line 77
    .line 78
    if-ne p1, v5, :cond_4

    .line 79
    .line 80
    iput v2, v3, Lg0/b;->a:I

    .line 81
    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    .line 84
    aget p1, v4, v2

    .line 85
    .line 86
    if-ne p1, v5, :cond_5

    .line 87
    .line 88
    iput v2, v3, Lg0/b;->b:I

    .line 89
    .line 90
    :cond_5
    invoke-virtual {p3, p2, v3}, Li0/f;->b(Lf0/d;Lg0/b;)V

    .line 91
    .line 92
    .line 93
    iget p1, v3, Lg0/b;->e:I

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Lf0/d;->O(I)V

    .line 96
    .line 97
    .line 98
    iget p1, v3, Lg0/b;->f:I

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lf0/d;->L(I)V

    .line 101
    .line 102
    .line 103
    iget-boolean p1, v3, Lg0/b;->h:Z

    .line 104
    .line 105
    iput-boolean p1, p2, Lf0/d;->E:Z

    .line 106
    .line 107
    iget p1, v3, Lg0/b;->g:I

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lf0/d;->I(I)V

    .line 110
    .line 111
    .line 112
    iput v1, v3, Lg0/b;->j:I

    .line 113
    .line 114
    iget-boolean p1, v3, Lg0/b;->i:Z

    .line 115
    .line 116
    return p1
.end method

.method public F(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroid/view/View;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public I(Ljava/io/PushbackInputStream;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v0, v1}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-static {p1, v0}, Lv3/f;->H(I[B)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public J(I[B)J
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    sub-int/2addr v0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v2, [B

    .line 7
    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    if-ge v0, v3, :cond_0

    .line 11
    .line 12
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 13
    .line 14
    .line 15
    :cond_0
    array-length v0, p2

    .line 16
    sub-int/2addr v0, p1

    .line 17
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {p2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x7

    .line 25
    aget-byte p1, v2, p1

    .line 26
    .line 27
    and-int/lit16 p1, p1, 0xff

    .line 28
    .line 29
    int-to-long p1, p1

    .line 30
    shl-long/2addr p1, v3

    .line 31
    const/4 v0, 0x6

    .line 32
    aget-byte v0, v2, v0

    .line 33
    .line 34
    and-int/lit16 v0, v0, 0xff

    .line 35
    .line 36
    int-to-long v4, v0

    .line 37
    or-long/2addr p1, v4

    .line 38
    shl-long/2addr p1, v3

    .line 39
    const/4 v0, 0x5

    .line 40
    aget-byte v0, v2, v0

    .line 41
    .line 42
    and-int/lit16 v0, v0, 0xff

    .line 43
    .line 44
    int-to-long v4, v0

    .line 45
    or-long/2addr p1, v4

    .line 46
    shl-long/2addr p1, v3

    .line 47
    const/4 v0, 0x4

    .line 48
    aget-byte v0, v2, v0

    .line 49
    .line 50
    and-int/lit16 v0, v0, 0xff

    .line 51
    .line 52
    int-to-long v4, v0

    .line 53
    or-long/2addr p1, v4

    .line 54
    shl-long/2addr p1, v3

    .line 55
    const/4 v0, 0x3

    .line 56
    aget-byte v0, v2, v0

    .line 57
    .line 58
    and-int/lit16 v0, v0, 0xff

    .line 59
    .line 60
    int-to-long v4, v0

    .line 61
    or-long/2addr p1, v4

    .line 62
    shl-long/2addr p1, v3

    .line 63
    const/4 v0, 0x2

    .line 64
    aget-byte v0, v2, v0

    .line 65
    .line 66
    and-int/lit16 v0, v0, 0xff

    .line 67
    .line 68
    int-to-long v4, v0

    .line 69
    or-long/2addr p1, v4

    .line 70
    shl-long/2addr p1, v3

    .line 71
    const/4 v0, 0x1

    .line 72
    aget-byte v0, v2, v0

    .line 73
    .line 74
    and-int/lit16 v0, v0, 0xff

    .line 75
    .line 76
    int-to-long v4, v0

    .line 77
    or-long/2addr p1, v4

    .line 78
    shl-long/2addr p1, v3

    .line 79
    aget-byte v0, v2, v1

    .line 80
    .line 81
    and-int/lit16 v0, v0, 0xff

    .line 82
    .line 83
    int-to-long v0, v0

    .line 84
    or-long/2addr p1, v0

    .line 85
    return-wide p1
.end method

.method public L(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lb6/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lb6/b;

    .line 7
    .line 8
    invoke-interface {v0}, Lb6/b;->b()Lb6/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lb6/d;->a:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lgf/g;

    .line 18
    .line 19
    iget v0, v0, Lgf/g;->a:I

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    :pswitch_0
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lw0/d;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lw0/d;->c(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public M(Landroid/media/MediaCodec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/media/LoudnessCodecController;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0, p1}, Ld2/b;->c(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public N(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/LoudnessCodecController;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Ld2/b;->b(Landroid/media/LoudnessCodecController;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ld2/k;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ld2/k;-><init>(Lv3/f;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Ld2/b;->a(ILd2/k;)Landroid/media/LoudnessCodecController;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/media/MediaCodec;

    .line 43
    .line 44
    invoke-static {p1, v1}, Ld2/b;->e(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method public O(Lf0/e;III)V
    .locals 3

    .line 1
    iget v0, p1, Lf0/d;->b0:I

    .line 2
    .line 3
    iget v1, p1, Lf0/d;->c0:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p1, Lf0/d;->b0:I

    .line 7
    .line 8
    iput v2, p1, Lf0/d;->c0:I

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Lf0/d;->O(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4}, Lf0/d;->L(I)V

    .line 14
    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iput v2, p1, Lf0/d;->b0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p1, Lf0/d;->b0:I

    .line 22
    .line 23
    :goto_0
    if-gez v1, :cond_1

    .line 24
    .line 25
    iput v2, p1, Lf0/d;->c0:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput v1, p1, Lf0/d;->c0:I

    .line 29
    .line 30
    :goto_1
    iget-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lf0/e;

    .line 33
    .line 34
    iput p2, p1, Lf0/e;->t0:I

    .line 35
    .line 36
    invoke-virtual {p1}, Lf0/e;->U()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/location/LocationManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/yunpan/appmanage/util/c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public S(Lf0/e;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    if-ge v3, v1, :cond_2

    .line 18
    .line 19
    iget-object v5, p1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lf0/d;

    .line 26
    .line 27
    iget-object v6, v5, Lf0/d;->p0:[I

    .line 28
    .line 29
    aget v7, v6, v2

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    if-eq v7, v8, :cond_0

    .line 33
    .line 34
    aget v4, v6, v4

    .line 35
    .line 36
    if-ne v4, v8, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p1, Lf0/e;->s0:Lg0/e;

    .line 45
    .line 46
    iput-boolean v4, p1, Lg0/e;->a:Z

    .line 47
    .line 48
    return-void
.end method

.method public U(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    invoke-static {p2, v0}, Lv3/f;->T(I[B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public V(Ljava/io/ByteArrayOutputStream;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    invoke-static {v0, p2, p3}, Lv3/f;->W([BJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public X(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3

    .line 1
    ushr-int/lit8 v0, p2, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    iget-object v1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, [B

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aput-byte v0, v1, v2

    .line 10
    .line 11
    and-int/lit16 p2, p2, 0xff

    .line 12
    .line 13
    int-to-byte p2, p2

    .line 14
    const/4 v0, 0x0

    .line 15
    aput-byte p2, v1, v0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public a(Lu1/q;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu1/d0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lu1/d0;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-wide v1, v0, Lu1/d0;->c:J

    .line 16
    .line 17
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    iget-wide v5, v0, Lu1/d0;->b:J

    .line 27
    .line 28
    add-long/2addr v1, v5

    .line 29
    :goto_0
    move-wide v6, v1

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    invoke-virtual {v0}, Lu1/d0;->d()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    monitor-exit v0

    .line 39
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lu1/d0;

    .line 42
    .line 43
    invoke-virtual {v0}, Lu1/d0;->e()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    cmp-long v2, v6, v3

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    cmp-long v2, v0, v3

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    iget-object v2, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lr1/p;

    .line 59
    .line 60
    iget-wide v3, v2, Lr1/p;->t:J

    .line 61
    .line 62
    cmp-long v5, v0, v3

    .line 63
    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    new-instance v3, Lr1/o;

    .line 67
    .line 68
    invoke-direct {v3, v2}, Lr1/o;-><init>(Lr1/p;)V

    .line 69
    .line 70
    .line 71
    iput-wide v0, v3, Lr1/o;->s:J

    .line 72
    .line 73
    new-instance v0, Lr1/p;

    .line 74
    .line 75
    invoke-direct {v0, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Ll2/j0;

    .line 83
    .line 84
    invoke-interface {v1, v0}, Ll2/j0;->g(Lr1/p;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p1}, Lu1/q;->a()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Ll2/j0;

    .line 94
    .line 95
    invoke-interface {v0, v9, p1}, Ll2/j0;->a(ILu1/q;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 99
    .line 100
    move-object v5, p1

    .line 101
    check-cast v5, Ll2/j0;

    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    const/4 v8, 0x1

    .line 105
    const/4 v10, 0x0

    .line 106
    invoke-interface/range {v5 .. v11}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_2
    return-void

    .line 110
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    goto :goto_5

    .line 112
    :goto_4
    throw p1

    .line 113
    :goto_5
    goto :goto_4
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 4
    .line 5
    return-object v0
.end method

.method public c(Lu1/d0;Ll2/q;Ls3/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p3}, Ls3/d0;->m()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ls3/d0;->n()V

    .line 7
    .line 8
    .line 9
    iget p1, p3, Ls3/d0;->d:I

    .line 10
    .line 11
    const/4 p3, 0x5

    .line 12
    invoke-interface {p2, p1, p3}, Ll2/q;->z(II)Ll2/j0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p2, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p2, Lr1/p;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Ll2/j0;->g(Lr1/p;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public d(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, p2, v1}, Lu1/f0;->a([JJZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    array-length p2, v0

    .line 11
    if-ge p1, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method public e(I)J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {v2}, La9/o;->k(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, [J

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-ge p1, v3, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_1
    invoke-static {v0}, La9/o;->k(Z)V

    .line 20
    .line 21
    .line 22
    aget-wide v0, v2, p1

    .line 23
    .line 24
    return-wide v0
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 4
    .line 5
    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/ClipDescription;

    .line 4
    .line 5
    return-object v0
.end method

.method public h(J)Ljava/util/List;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    iget-object v5, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ge v4, v6, :cond_2

    .line 24
    .line 25
    mul-int/lit8 v6, v4, 0x2

    .line 26
    .line 27
    iget-object v7, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v7, [J

    .line 30
    .line 31
    aget-wide v8, v7, v6

    .line 32
    .line 33
    cmp-long v10, v8, p1

    .line 34
    .line 35
    if-gtz v10, :cond_1

    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    aget-wide v6, v7, v6

    .line 40
    .line 41
    cmp-long v8, p1, v6

    .line 42
    .line 43
    if-gez v8, :cond_1

    .line 44
    .line 45
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lr3/c;

    .line 50
    .line 51
    iget-object v6, v5, Lr3/c;->a:Lt1/b;

    .line 52
    .line 53
    iget v7, v6, Lt1/b;->e:F

    .line 54
    .line 55
    const v8, -0x800001

    .line 56
    .line 57
    .line 58
    cmpl-float v7, v7, v8

    .line 59
    .line 60
    if-nez v7, :cond_0

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-instance v4, Lqa/e;

    .line 73
    .line 74
    const/4 v5, 0x4

    .line 75
    invoke-direct {v4, v5}, Lqa/e;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ge v3, v4, :cond_3

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lr3/c;

    .line 92
    .line 93
    iget-object v4, v4, Lr3/c;->a:Lt1/b;

    .line 94
    .line 95
    rsub-int/lit8 v5, v3, -0x1

    .line 96
    .line 97
    int-to-float v11, v5

    .line 98
    new-instance v5, Lt1/b;

    .line 99
    .line 100
    move-object v6, v5

    .line 101
    iget-object v7, v4, Lt1/b;->a:Ljava/lang/CharSequence;

    .line 102
    .line 103
    iget-object v8, v4, Lt1/b;->b:Landroid/text/Layout$Alignment;

    .line 104
    .line 105
    iget-object v9, v4, Lt1/b;->c:Landroid/text/Layout$Alignment;

    .line 106
    .line 107
    iget-object v10, v4, Lt1/b;->d:Landroid/graphics/Bitmap;

    .line 108
    .line 109
    const/4 v12, 0x1

    .line 110
    iget v13, v4, Lt1/b;->g:I

    .line 111
    .line 112
    iget v14, v4, Lt1/b;->h:F

    .line 113
    .line 114
    iget v15, v4, Lt1/b;->i:I

    .line 115
    .line 116
    iget v12, v4, Lt1/b;->n:I

    .line 117
    .line 118
    move/from16 v16, v12

    .line 119
    .line 120
    iget v12, v4, Lt1/b;->o:F

    .line 121
    .line 122
    move/from16 v17, v12

    .line 123
    .line 124
    iget v12, v4, Lt1/b;->j:F

    .line 125
    .line 126
    move/from16 v18, v12

    .line 127
    .line 128
    iget v12, v4, Lt1/b;->k:F

    .line 129
    .line 130
    move/from16 v19, v12

    .line 131
    .line 132
    iget-boolean v12, v4, Lt1/b;->l:Z

    .line 133
    .line 134
    move/from16 v20, v12

    .line 135
    .line 136
    iget v12, v4, Lt1/b;->m:I

    .line 137
    .line 138
    move/from16 v21, v12

    .line 139
    .line 140
    iget v12, v4, Lt1/b;->p:I

    .line 141
    .line 142
    move/from16 v22, v12

    .line 143
    .line 144
    iget v12, v4, Lt1/b;->q:F

    .line 145
    .line 146
    move/from16 v23, v12

    .line 147
    .line 148
    iget v4, v4, Lt1/b;->r:I

    .line 149
    .line 150
    move/from16 v24, v4

    .line 151
    .line 152
    const/4 v12, 0x1

    .line 153
    invoke-direct/range {v6 .. v24}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    return-object v1
.end method

.method public i(Lph/q;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lph/x;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Lph/x;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lv3/f;->r(Lph/x;II)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lph/l;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lph/l;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lv3/f;->n(Lph/l;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    check-cast p1, Lph/p;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lv3/f;->o(Lph/p;I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw0/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lw0/d;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lb6/a;

    .line 14
    .line 15
    invoke-interface {v0}, Lb6/a;->create()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "FactoryPools"

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_0
    instance-of v1, v0, Lb6/b;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    move-object v1, v0

    .line 40
    check-cast v1, Lb6/b;

    .line 41
    .line 42
    invoke-interface {v1}, Lb6/b;->b()Lb6/d;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    iput-boolean v2, v1, Lb6/d;->a:Z

    .line 48
    .line 49
    :cond_1
    return-object v0
.end method

.method public declared-synchronized m(Lh5/s;Lh5/t;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lh5/b;

    .line 3
    .line 4
    iget-object v1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lh5/b;-><init>(Lh5/s;Lh5/t;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lh5/b;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-object p2, p1, Lh5/b;->c:Lh5/z;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public n(Lph/l;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Loh/a;

    .line 4
    .line 5
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lph/g;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Lph/l;->s(Loh/a;Lph/g;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public o(Lph/p;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Loh/a;

    .line 4
    .line 5
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lph/g;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Lph/q;->s(Loh/a;Lph/g;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public p(Lph/q;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lph/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lph/l;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lv3/f;->q(Lph/l;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public q(Lph/l;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Loh/a;

    .line 4
    .line 5
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lph/g;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Lph/l;->J(Loh/a;Lph/g;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public r(Lph/x;II)V
    .locals 1

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-virtual {p1}, Lph/p;->A()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p3, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p3, Lph/g;

    .line 10
    .line 11
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Loh/a;

    .line 14
    .line 15
    invoke-static {v0, p1, p3, p2}, Lph/n;->c(Loh/a;Ljava/lang/String;Lph/g;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public s()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/net/Uri;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v3, "mime_type"

    .line 19
    .line 20
    invoke-static {v0, v1, v3}, Lcom/bumptech/glide/d;->U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    int-to-long v5, v4

    .line 25
    const-string v7, "flags"

    .line 26
    .line 27
    invoke-static {v0, v1, v7, v5, v6}, Lcom/bumptech/glide/d;->T(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    long-to-int v1, v0

    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    and-int/lit8 v0, v1, 0x4

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :goto_0
    const/4 v4, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string v0, "vnd.android.document/directory"

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    and-int/lit8 v0, v1, 0x8

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    and-int/lit8 v0, v1, 0x2

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_1
    return v4
.end method

.method public t(Lh5/b;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lh5/b;->a:Lh5/s;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, Lh5/b;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lh5/b;->c:Lh5/z;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v0, Lh5/t;

    .line 22
    .line 23
    iget-object v5, p1, Lh5/b;->a:Lh5/s;

    .line 24
    .line 25
    iget-object v1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, v1

    .line 28
    check-cast v6, Lh5/n;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v6}, Lh5/t;-><init>(Lh5/z;ZZLh5/s;Lh5/n;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lh5/n;

    .line 39
    .line 40
    iget-object p1, p1, Lh5/b;->a:Lh5/s;

    .line 41
    .line 42
    invoke-virtual {v1, p1, v0}, Lh5/n;->e(Lh5/s;Lh5/t;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lv3/f;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "<"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ":"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x3e

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ln8/e;

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    const-string v2, ","

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {v3}, Ln8/e;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-object v2, v3

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    nop

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget v0, p0, Lv3/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->f()Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_0
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lo5/w;

    .line 31
    .line 32
    invoke-virtual {v0}, Lo5/w;->reset()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :pswitch_1
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-static {v0}, La6/c;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, La6/a;

    .line 50
    .line 51
    invoke-direct {v1, v0}, La6/a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/r0;
    .locals 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/lifecycle/v0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Landroidx/lifecycle/v0;->a:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/lifecycle/r0;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Landroidx/lifecycle/u0;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    instance-of p1, v3, Landroidx/lifecycle/p0;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    check-cast v3, Landroidx/lifecycle/p0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v3, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p2, v3, Landroidx/lifecycle/p0;->e:Lb4/e;

    .line 49
    .line 50
    invoke-static {p2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1, p2, p1}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/r0;Lb4/e;Landroidx/lifecycle/o;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 57
    .line 58
    invoke-static {v1, p1}, Lue/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    new-instance v1, Lp1/c;

    .line 63
    .line 64
    iget-object v2, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lp1/b;

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lp1/c;-><init>(Lp1/b;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Landroidx/lifecycle/s0;->b:Landroidx/lifecycle/s0;

    .line 72
    .line 73
    iget-object v4, v1, Lp1/b;->a:Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/u0;->e(Ljava/lang/Class;Lp1/c;)Landroidx/lifecycle/r0;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/u0;->b(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_1
    const-string v1, "viewModel"

    .line 88
    .line 89
    invoke-static {p1, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Landroidx/lifecycle/r0;

    .line 97
    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    invoke-virtual {p2}, Landroidx/lifecycle/r0;->b()V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-object p1
.end method

.method public x()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/l;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, v0, Ll2/l;->d:J

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public y()V
    .locals 8

    .line 1
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "location"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/location/LocationManager;

    .line 12
    .line 13
    iput-object v1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 14
    .line 15
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ln0/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "\u6ca1\u6709\u5b9a\u4f4d\u6743\u9650"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/location/LocationManager;

    .line 32
    .line 33
    const-string v1, "gps"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "GPS\u6a21\u5757\u672a\u5f00\u542f"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance v6, Lcom/yunpan/appmanage/util/c;

    .line 48
    .line 49
    invoke-direct {v6, p0}, Lcom/yunpan/appmanage/util/c;-><init>(Lv3/f;)V

    .line 50
    .line 51
    .line 52
    iput-object v6, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 53
    .line 54
    :try_start_0
    iget-object v0, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    check-cast v1, Landroid/location/LocationManager;

    .line 58
    .line 59
    const-string v2, "gps"

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    :cond_2
    const-wide/16 v2, 0x1f4

    .line 76
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/yunpan/appmanage/util/c;

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    sub-long/2addr v2, v0

    .line 92
    const-wide/16 v4, 0x1a0a

    .line 93
    .line 94
    cmp-long v6, v2, v4

    .line 95
    .line 96
    if-ltz v6, :cond_2

    .line 97
    .line 98
    :catch_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lcom/yunpan/appmanage/util/c;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Lv3/f;->P()V

    .line 105
    .line 106
    .line 107
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6GPS\u65f6\u95f4"

    .line 108
    .line 109
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_1
    invoke-virtual {p0}, Lv3/f;->P()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    return-void
.end method

.method public z()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 10

    .line 1
    iget v0, p0, Lv3/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 9
    .line 10
    iget-object v1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, La2/k1;

    .line 13
    .line 14
    iget-object v2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lf5/e;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    :try_start_0
    new-instance v7, Lo5/w;

    .line 33
    .line 34
    new-instance v8, Ljava/io/FileInputStream;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->f()Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v7, v8, v1}, Lo5/w;-><init>(Ljava/io/InputStream;La2/k1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-interface {v5, v7}, Lf5/e;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 51
    .line 52
    .line 53
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v7}, Lo5/w;->A()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->f()Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    .line 60
    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 61
    .line 62
    if-eq v5, v6, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    move-object v6, v7

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v1

    .line 72
    :goto_1
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v6}, Lo5/w;->A()V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->f()Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_2
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 82
    .line 83
    :goto_2
    return-object v5

    .line 84
    :pswitch_0
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lo5/w;

    .line 91
    .line 92
    invoke-virtual {v0}, Lo5/w;->reset()V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object v2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, La2/k1;

    .line 102
    .line 103
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/b;->n(Ljava/util/ArrayList;Ljava/io/InputStream;La2/k1;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    invoke-static {v0}, La6/c;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {v1, v0}, Landroid/support/v4/media/session/b;->o(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

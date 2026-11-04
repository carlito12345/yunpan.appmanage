.class public final Lc1/a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc1/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc1/a;->a:I

    .line 2
    iput-object p1, p0, Lc1/a;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc1/a;->a:I

    iput-object p1, p0, Lc1/a;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 1
    iget v0, p0, Lc1/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(Z)V
    .locals 1

    iget v0, p0, Lc1/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    .line 1
    :pswitch_0
    iget-object p1, p0, Lc1/a;->b:Ljava/lang/Object;

    check-cast p1, Lc1/c;

    iget-boolean v0, p1, Lc1/c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lc1/c;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lc1/c;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p1, Lc1/c;->a:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget v0, p0, Lc1/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 4
    :pswitch_0
    iget-object p1, p0, Lc1/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/yunpan/appmanage/service/AccService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "screen_brightness"

    const/16 v1, 0xff

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 5
    iget v0, p1, Lcom/yunpan/appmanage/service/AccService;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput p2, p1, Lcom/yunpan/appmanage/service/AccService;->v:I

    goto/16 :goto_2

    :cond_0
    sub-int v0, p2, v0

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget v0, p1, Lcom/yunpan/appmanage/service/AccService;->v:I

    if-le p2, v0, :cond_3

    .line 9
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p2, :cond_2

    .line 10
    iget v3, p1, Lcom/yunpan/appmanage/service/AccService;->v:I

    if-le v2, v3, :cond_2

    .line 11
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->u:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz7/o;

    invoke-virtual {p1, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v0

    iget-object v0, v0, Lwa/s;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p2, :cond_4

    .line 13
    iget v3, p1, Lcom/yunpan/appmanage/service/AccService;->v:I

    if-ge v2, v3, :cond_4

    .line 14
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->v:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz7/o;

    invoke-virtual {p1, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    goto :goto_1

    .line 15
    :cond_5
    iput p2, p1, Lcom/yunpan/appmanage/service/AccService;->v:I

    :goto_2
    return-void

    .line 16
    :pswitch_1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 17
    iget-object p1, p0, Lc1/a;->b:Ljava/lang/Object;

    check-cast p1, Lha/f0;

    iget-object p2, p1, Lha/f0;->l:Landroid/widget/TextView;

    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness"

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 18
    :pswitch_2
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 19
    iget-object p1, p0, Lc1/a;->b:Ljava/lang/Object;

    check-cast p1, Lha/y;

    iget-object p2, p1, Lha/y;->l:Landroid/widget/TextView;

    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness"

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

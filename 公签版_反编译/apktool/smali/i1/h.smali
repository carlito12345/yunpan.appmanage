.class public final Li1/h;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final b:Li1/g;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lha/l2;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Li1/g;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Li1/g;-><init>(Landroid/widget/TextView;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Li1/h;->b:Li1/g;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final H([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, Li1/h;->b:Li1/g;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Li1/g;->H([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final V(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Li1/h;->b:Li1/g;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Li1/g;->V(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final W(Z)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Li1/h;->b:Li1/g;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-boolean p1, v1, Li1/g;->d:Z

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v1, p1}, Li1/g;->W(Z)V

    .line 16
    .line 17
    .line 18
    :goto_1
    return-void
.end method

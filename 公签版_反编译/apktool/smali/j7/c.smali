.class public final Lj7/c;
.super Lcom/bumptech/glide/d;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/text/TextPaint;

.field public final synthetic g:Lcom/bumptech/glide/d;

.field public final synthetic h:Lj7/d;


# direct methods
.method public constructor <init>(Lj7/d;Landroid/content/Context;Landroid/text/TextPaint;Lcom/bumptech/glide/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj7/c;->h:Lj7/d;

    .line 2
    .line 3
    iput-object p2, p0, Lj7/c;->e:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lj7/c;->f:Landroid/text/TextPaint;

    .line 6
    .line 7
    iput-object p4, p0, Lj7/c;->g:Lcom/bumptech/glide/d;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/d;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final O(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->g:Lcom/bumptech/glide/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->O(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final P(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj7/c;->f:Landroid/text/TextPaint;

    .line 2
    .line 3
    iget-object v1, p0, Lj7/c;->h:Lj7/d;

    .line 4
    .line 5
    iget-object v2, p0, Lj7/c;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v2, v0, p1}, Lj7/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lj7/c;->g:Lcom/bumptech/glide/d;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d;->P(Landroid/graphics/Typeface;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

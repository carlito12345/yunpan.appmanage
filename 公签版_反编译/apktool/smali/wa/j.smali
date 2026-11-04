.class public final synthetic Lwa/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lwa/s;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lwa/s;Ljava/io/File;IIIIII)V
    .locals 0

    .line 1
    iput p8, p0, Lwa/j;->a:I

    iput-object p1, p0, Lwa/j;->b:Lwa/s;

    iput-object p2, p0, Lwa/j;->c:Ljava/io/File;

    iput p3, p0, Lwa/j;->d:I

    iput p4, p0, Lwa/j;->e:I

    iput p5, p0, Lwa/j;->f:I

    iput p6, p0, Lwa/j;->g:I

    iput p7, p0, Lwa/j;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lwa/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lwa/j;->c:Ljava/io/File;

    .line 7
    .line 8
    iget v3, p0, Lwa/j;->d:I

    .line 9
    .line 10
    iget v4, p0, Lwa/j;->e:I

    .line 11
    .line 12
    iget v5, p0, Lwa/j;->f:I

    .line 13
    .line 14
    iget v6, p0, Lwa/j;->g:I

    .line 15
    .line 16
    iget v7, p0, Lwa/j;->h:I

    .line 17
    .line 18
    iget-object v1, p0, Lwa/j;->b:Lwa/s;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lwa/s;->l(Ljava/io/File;IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    return-void

    .line 27
    :pswitch_0
    iget-object v9, p0, Lwa/j;->c:Ljava/io/File;

    .line 28
    .line 29
    iget v10, p0, Lwa/j;->d:I

    .line 30
    .line 31
    iget v11, p0, Lwa/j;->e:I

    .line 32
    .line 33
    iget v12, p0, Lwa/j;->f:I

    .line 34
    .line 35
    iget v13, p0, Lwa/j;->g:I

    .line 36
    .line 37
    iget v14, p0, Lwa/j;->h:I

    .line 38
    .line 39
    iget-object v8, p0, Lwa/j;->b:Lwa/s;

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual/range {v8 .. v14}, Lwa/s;->l(Ljava/io/File;IIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    :catch_1
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

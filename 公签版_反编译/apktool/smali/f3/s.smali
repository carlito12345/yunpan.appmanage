.class public final Lf3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Lr1/p;

.field public final h:I

.field public final i:[J

.field public final j:[J

.field public final k:I

.field public final l:[Lf3/t;


# direct methods
.method public constructor <init>(IIJJJJLr1/p;I[Lf3/t;I[J[J)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move v1, p1

    .line 6
    iput v1, v0, Lf3/s;->a:I

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput v1, v0, Lf3/s;->b:I

    .line 10
    .line 11
    move-wide v1, p3

    .line 12
    iput-wide v1, v0, Lf3/s;->c:J

    .line 13
    .line 14
    move-wide v1, p5

    .line 15
    iput-wide v1, v0, Lf3/s;->d:J

    .line 16
    .line 17
    move-wide v1, p7

    .line 18
    iput-wide v1, v0, Lf3/s;->e:J

    .line 19
    .line 20
    move-wide v1, p9

    .line 21
    iput-wide v1, v0, Lf3/s;->f:J

    .line 22
    .line 23
    move-object v1, p11

    .line 24
    iput-object v1, v0, Lf3/s;->g:Lr1/p;

    .line 25
    .line 26
    move v1, p12

    .line 27
    iput v1, v0, Lf3/s;->h:I

    .line 28
    .line 29
    move-object/from16 v1, p13

    .line 30
    .line 31
    iput-object v1, v0, Lf3/s;->l:[Lf3/t;

    .line 32
    .line 33
    move/from16 v1, p14

    .line 34
    .line 35
    iput v1, v0, Lf3/s;->k:I

    .line 36
    .line 37
    move-object/from16 v1, p15

    .line 38
    .line 39
    iput-object v1, v0, Lf3/s;->i:[J

    .line 40
    .line 41
    move-object/from16 v1, p16

    .line 42
    .line 43
    iput-object v1, v0, Lf3/s;->j:[J

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lr1/p;)Lf3/s;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    new-instance v18, Lf3/s;

    .line 6
    .line 7
    move-object/from16 v1, v18

    .line 8
    .line 9
    iget-object v14, v0, Lf3/s;->l:[Lf3/t;

    .line 10
    .line 11
    iget v15, v0, Lf3/s;->k:I

    .line 12
    .line 13
    iget v2, v0, Lf3/s;->a:I

    .line 14
    .line 15
    iget v3, v0, Lf3/s;->b:I

    .line 16
    .line 17
    iget-wide v4, v0, Lf3/s;->c:J

    .line 18
    .line 19
    iget-wide v6, v0, Lf3/s;->d:J

    .line 20
    .line 21
    iget-wide v8, v0, Lf3/s;->e:J

    .line 22
    .line 23
    iget-wide v10, v0, Lf3/s;->f:J

    .line 24
    .line 25
    iget v13, v0, Lf3/s;->h:I

    .line 26
    .line 27
    move-object/from16 p1, v1

    .line 28
    .line 29
    iget-object v1, v0, Lf3/s;->i:[J

    .line 30
    .line 31
    move-object/from16 v16, v1

    .line 32
    .line 33
    iget-object v1, v0, Lf3/s;->j:[J

    .line 34
    .line 35
    move-object/from16 v17, v1

    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    invoke-direct/range {v1 .. v17}, Lf3/s;-><init>(IIJJJJLr1/p;I[Lf3/t;I[J[J)V

    .line 40
    .line 41
    .line 42
    return-object v18
.end method

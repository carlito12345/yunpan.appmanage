.class public final Lcom/android/apksig/internal/compat/OptionalIntCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Lcom/android/apksig/internal/compat/OptionalIntCompat;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/apksig/internal/compat/OptionalIntCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->EMPTY:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 3
    iput v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 6
    iput p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    return-void
.end method

.method public static empty()Lcom/android/apksig/internal/compat/OptionalIntCompat;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->EMPTY:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static of(I)Lcom/android/apksig/internal/compat/OptionalIntCompat;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/apksig/internal/compat/OptionalIntCompat;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    iget v1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 22
    .line 23
    iget p1, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 24
    .line 25
    if-ne v1, p1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-boolean p1, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 31
    .line 32
    if-ne v1, p1, :cond_2

    .line 33
    .line 34
    :goto_0
    return v0
.end method

.method public getAsInt()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 9
    .line 10
    const-string v1, "No value present"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/android/apksig/internal/compat/IntConsumerCompat;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->accept(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    return v0
.end method

.method public orElse(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 6
    .line 7
    :cond_0
    return p1
.end method

.method public orElseGet(Lcom/android/apksig/internal/compat/IntSupplierCompat;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/android/apksig/internal/compat/IntSupplierCompat;->getAsInt()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :goto_0
    return p1
.end method

.method public orElseThrow(Lcom/android/apksig/internal/compat/SupplierCompat;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/android/apksig/internal/compat/SupplierCompat<",
            "TX;>;)I^TX;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/android/apksig/internal/compat/SupplierCompat;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Throwable;

    .line 13
    .line 14
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    .line 6
    .line 7
    const-string v1, "OptionalIntCompat["

    .line 8
    .line 9
    const-string v2, "]"

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "OptionalIntCompat.empty"

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

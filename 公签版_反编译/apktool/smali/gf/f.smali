.class public interface abstract annotation Lgf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lgf/f;
        cls = .enum Lgf/h;->c:Lgf/h;
        elementType = .enum Lgf/j;->a:Lgf/j;
        index = 0x0
        optional = false
        tagNumber = -0x1
        tagging = .enum Lgf/i;->a:Lgf/i;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract cls()Lgf/h;
.end method

.method public abstract index()I
.end method

.method public abstract optional()Z
.end method

.method public abstract tagNumber()I
.end method

.method public abstract tagging()Lgf/i;
.end method

.method public abstract type()Lgf/j;
.end method

.class public interface abstract Lcom/badlogic/gdx/math/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation
.end method

.method public abstract cpy()Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract dot(Lcom/badlogic/gdx/math/Vector;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract dst(Lcom/badlogic/gdx/math/Vector;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract dst2(Lcom/badlogic/gdx/math/Vector;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation
.end method

.method public abstract hasOppositeDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract hasSameDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F",
            "Lcom/badlogic/gdx/math/Interpolation;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation
.end method

.method public abstract isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation
.end method

.method public abstract isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation
.end method

.method public abstract isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation
.end method

.method public abstract isUnit()Z
.end method

.method public abstract isUnit(F)Z
.end method

.method public abstract isZero()Z
.end method

.method public abstract isZero(F)Z
.end method

.method public abstract len()F
.end method

.method public abstract len2()F
.end method

.method public abstract lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation
.end method

.method public abstract limit(F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method public abstract limit2(F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method public abstract mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation
.end method

.method public abstract mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract nor()Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract scl(F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method public abstract scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract setLength(F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method public abstract setLength2(F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method public abstract setZero()Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

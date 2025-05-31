.class public interface abstract Lcom/badlogic/gdx/utils/Json$Serializer;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Json;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Json;",
            "TT;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation
.end method

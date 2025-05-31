.class public abstract Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;
.super Ljava/lang/Object;
.source "Json.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReadOnlySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1069
    .local p0, "this":Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;, "Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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

.method public write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p3, "knownType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Json;",
            "TT;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1071
    .local p0, "this":Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;, "Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method

.class public final enum Lcom/badlogic/gdx/graphics/Pixmap$Filter;
.super Ljava/lang/Enum;
.source "Pixmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Pixmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/Pixmap$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Filter;

.field public static final enum BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

.field public static final enum NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    const-string v1, "NearestNeighbour"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    const-string v1, "BiLinear"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/Pixmap$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    aput-object v1, v0, v3

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap$Filter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Pixmap$Filter;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Pixmap$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    return-object v0
.end method

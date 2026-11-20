.class public Lio/vanta/utils/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkRootPermission()Z
    .registers 3

    .line 23
    const-string v0, "echo root"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/vanta/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;

    move-result-object v0

    iget v0, v0, Lio/vanta/utils/ShellUtils$CommandResult;->result:I

    if-nez v0, :cond_d

    return v1

    :cond_d
    return v2
.end method

.method public static execCommand(Ljava/lang/String;Z)Lio/vanta/utils/ShellUtils$CommandResult;
    .registers 5

    const/4 v0, 0x1

    .line 29
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lio/vanta/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;
    .registers 5

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lio/vanta/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;Z)Lio/vanta/utils/ShellUtils$CommandResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lio/vanta/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_d

    :cond_4
    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_d
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/vanta/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lio/vanta/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_d

    :cond_4
    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_d
    invoke-static {p0, p1, p2}, Lio/vanta/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;Z)Lio/vanta/utils/ShellUtils$CommandResult;
    .registers 3

    const/4 v0, 0x1

    .line 40
    invoke-static {p0, p1, v0}, Lio/vanta/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lio/vanta/utils/ShellUtils$CommandResult;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_145

    .line 58
    array-length v2, p0

    if-nez v2, :cond_9

    goto/16 :goto_145

    .line 66
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p1, :cond_12

    const-string p1, "su"

    goto :goto_14

    :cond_12
    const-string p1, "sh"

    :goto_14
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_df
    .catchall {:try_start_9 .. :try_end_18} :catchall_da

    .line 67
    :try_start_18
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_d0
    .catchall {:try_start_18 .. :try_end_21} :catchall_cc

    .line 68
    :try_start_21
    array-length v3, p0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_22} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_22} :catch_be
    .catchall {:try_start_21 .. :try_end_22} :catchall_b9

    const/4 v4, 0x0

    :goto_23
    const-string v5, "\n"

    if-ge v4, v3, :cond_3c

    :try_start_27
    aget-object v6, p0, v4

    if-nez v6, :cond_2c

    goto :goto_39

    .line 72
    :cond_2c
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 73
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 76
    :cond_3c
    const-string p0, "exit\n"

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz p2, :cond_a3

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4f} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4f} :catch_be
    .catchall {:try_start_27 .. :try_end_4f} :catchall_b9

    .line 81
    :try_start_4f
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5d} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_8f
    .catchall {:try_start_4f .. :try_end_5d} :catchall_b9

    .line 83
    :goto_5d
    :try_start_5d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a5

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_77} :catch_85
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_77} :catch_7b
    .catchall {:try_start_5d .. :try_end_77} :catchall_78

    goto :goto_5d

    :catchall_78
    move-exception p0

    goto/16 :goto_bb

    :catch_7b
    move-exception v3

    move-object v7, p1

    move-object p1, p0

    move-object p0, v3

    move-object v3, v2

    move v2, v1

    move-object v1, p2

    move-object p2, v7

    goto/16 :goto_e5

    :catch_85
    move-exception v3

    move-object v7, p1

    move-object p1, p0

    move-object p0, v3

    move-object v3, v2

    move v2, v1

    move-object v1, p2

    move-object p2, v7

    goto/16 :goto_102

    :catch_8f
    move-exception p2

    move-object v3, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_e5

    :catch_99
    move-exception p2

    move-object v3, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_102

    :cond_a3
    move-object p0, v0

    move-object p2, p0

    .line 94
    :cond_a5
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz p2, :cond_b2

    .line 97
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception p2

    .line 100
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b2
    :goto_b2
    if-eqz p1, :cond_11d

    .line 103
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_11d

    :catchall_b9
    move-exception p0

    move-object p2, v0

    :goto_bb
    move-object v0, v2

    goto/16 :goto_12e

    :catch_be
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, v2

    move v2, v1

    move-object v1, p1

    goto :goto_e5

    :catch_c5
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, v2

    move v2, v1

    move-object v1, p1

    goto :goto_102

    :catchall_cc
    move-exception p0

    move-object p2, v0

    goto/16 :goto_12e

    :catch_d0
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, p1

    goto :goto_e3

    :catch_d5
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, p1

    goto :goto_100

    :catchall_da
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    goto/16 :goto_12e

    :catch_df
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object v3, p2

    :goto_e3
    move v2, v1

    move-object v1, v3

    .line 90
    :goto_e5
    :try_start_e5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_12a

    if-eqz v3, :cond_f0

    .line 94
    :try_start_ea
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_f0

    :catch_ee
    move-exception p0

    goto :goto_f6

    :cond_f0
    :goto_f0
    if-eqz v1, :cond_f9

    .line 97
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f5} :catch_ee

    goto :goto_f9

    .line 100
    :goto_f6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f9
    :goto_f9
    if-eqz p2, :cond_11b

    goto :goto_118

    :catch_fc
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object v3, p2

    :goto_100
    move v2, v1

    move-object v1, v3

    .line 88
    :goto_102
    :try_start_102
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_12a

    if-eqz v3, :cond_10d

    .line 94
    :try_start_107
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_10d

    :catch_10b
    move-exception p0

    goto :goto_113

    :cond_10d
    :goto_10d
    if-eqz v1, :cond_116

    .line 97
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_112} :catch_10b

    goto :goto_116

    .line 100
    :goto_113
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_116
    :goto_116
    if-eqz p2, :cond_11b

    .line 103
    :goto_118
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_11b
    move-object p0, p1

    move v1, v2

    .line 106
    :cond_11d
    :goto_11d
    new-instance p1, Lio/vanta/utils/ShellUtils$CommandResult;

    if-nez p0, :cond_122

    goto :goto_126

    :cond_122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_126
    invoke-direct {p1, v1, v0}, Lio/vanta/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;)V

    return-object p1

    :catchall_12a
    move-exception p0

    move-object p1, p2

    move-object p2, v1

    move-object v0, v3

    :goto_12e
    if-eqz v0, :cond_136

    .line 94
    :try_start_130
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_136

    :catch_134
    move-exception p2

    goto :goto_13c

    :cond_136
    :goto_136
    if-eqz p2, :cond_13f

    .line 97
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_13b} :catch_134

    goto :goto_13f

    .line 100
    :goto_13c
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_13f
    :goto_13f
    if-eqz p1, :cond_144

    .line 103
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 105
    :cond_144
    throw p0

    .line 59
    :cond_145
    :goto_145
    new-instance p0, Lio/vanta/utils/ShellUtils$CommandResult;

    invoke-direct {p0, v1, v0}, Lio/vanta/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

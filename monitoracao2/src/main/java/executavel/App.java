package executavel;

import conexao.Conexao;
import static java.awt.Frame.NORMAL;
import static java.awt.image.ImageObserver.WIDTH;
import java.util.Timer;
import java.util.TimerTask;
import java.util.logging.Level;
import modelos.Disco;
import modelos.Funcionario;
import modelos.Log;
import modelos.Memoria;
import modelos.Processador;
import telas.Login;
import telas.Monitoracao;
import telas.Splash;
import java.util.logging.Logger;

import java.io.File;
import java.util.Scanner;
import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;
import modelos.DadosProcessos;
import modelos.ModeloDadosTabela;
import modelos.Processos;
import oshi.SystemInfo;
import oshi.software.os.OSProcess;
import oshi.software.os.OperatingSystem;
import oshi.util.FormatUtil;

public class App {

    public static void main(String[] args) {

        //        Processador proc = new Processador();
        //
        //        Timer timer = new Timer(); // Instânciando um objeto tTmer = esse objeto de tempo.
        //
        //        TimerTask taskCpu = new TimerTask() {  // Instânciando um objeto TimerTask = esse objeto é tem uma tarefa com um determinado tempo.
        //            @Override
        //            public void run() {
        //                Processador proc = new Processador();
        //                proc.gravarCpu();
        //            }
        //        };
        //
        //        TimerTask taskDisco = new TimerTask() { // Instânciando um objeto TimerTask = esse objeto é tem uma tarefa com um determinado tempo.
        //            @Override
        //            public void run() {
        //                Disco disk = new Disco();
        //                disk.gravarDisco();
        //            }
        //        };
        //
        //        TimerTask taskMemoria = new TimerTask() { // Instânciando um objeto TimerTask = esse objeto é tem uma tarefa com um determinado tempo.
        //            @Override
        //            public void run() {
        //                Memoria memory = new Memoria();
        //                memory.gravarMemory();
        //            }
        //        };
        //
        //        timer.scheduleAtFixedRate(taskCpu, 30000, 30000); //Estipulando o tempo que essa tarefa vai ser rodada.
        //        timer.scheduleAtFixedRate(taskMemoria, 30000, 30000);
        //        timer.scheduleAtFixedRate(taskDisco, 30000, 30000);
        //        Processador proc = new Processador();
        //
        //        Timer timer = new Timer(); // Instânciando um objeto tTmer = esse objeto de tempo.
        //
        //        TimerTask taskCpu = new TimerTask() {  // Instânciando um objeto TimerTask = esse objeto é tem uma tarefa com um determinado tempo.
        //            @Override
        //            public void run() {
        //                Processador proc = new Processador();
        //                proc.gravarCpu();
        //            }
        //        };
        //
        //        TimerTask taskDisco = new TimerTask() { // Instânciando um objeto TimerTask = esse objeto é tem uma tarefa com um determinado tempo.
        //            @Override
        //            public void run() {
        //                Disco disk = new Disco();
        //                disk.gravarDisco();
        //            }
        //        };
        //
        //        TimerTask taskMemoria = new TimerTask() { // Instânciando um objeto TimerTask = esse objeto é tem uma tarefa com um determinado tempo.
        //            @Override
        //            public void run() {
        //                Memoria memory = new Memoria();
        //                memory.gravarMemory();
        //            }
        //        };
        //
        //        timer.scheduleAtFixedRate(taskCpu, 30000, 30000); //Estipulando o tempo que essa tarefa vai ser rodada.
        //        timer.scheduleAtFixedRate(taskMemoria, 30000, 30000);
        //        timer.scheduleAtFixedRate(taskDisco, 30000, 30000);
        
        
        new Login();



//        try {
//
//          ModeloDadosTabela md = new ModeloDadosTabela();
//        
//
//            SystemInfo si = new SystemInfo();
//            OperatingSystem os = si.getOperatingSystem();
//
////                     dados.getUsuario();
////                    user.getProcessoUser();
//            Log my_log = new Log("C:\\Users\\VINICIUSSOBRALDEARAU\\Desktop\\Logs\\log.txt");
//
//            my_log.logger.getLevel();
//            my_log.logger.setLevel(Level.ALL);
////			my_log.logger.warning("my_log");
//             my_log.logger.equals("User: " + md.getUsers(WIDTH, NORMAL));
////            my_log.logger.severe("");
//            my_log.logger.info("User: " + md.getUsers(WIDTH, NORMAL));
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }

    }

    // Splash n1 = new Splash();
}
